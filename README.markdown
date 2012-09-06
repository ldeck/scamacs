#Installing Scamacs

## Declaration of it wasn't me.

There is little original code in Scamacs.  It is simply the confluence of three major pieces of Scala related elisp: Ensime, Scala-Mode, and ECB amalgamated on Saturday morning.  The primary authors deserve full credit for the respective components.

## Emacs Version
The following has been tested on the current emacs 24.2.  Earlier versions of emacs have not been tested.

## Setting up Scamacs

### Git Cloning

Scamacs uses git submodules to pull in Ensime and ECB.  The Scala-mode is a fork from the Scala distribution.

- Git clone the Scamacs project.
- Init the submodules via 'git submodule init'
- Clone down the submodules via 'git submodule update'

### Building 

First build all the components, then we'll configure everything.

### Building Ensime

Scamacs contains an unmodified version of Ensime.  Build Ensime in the usual fashion as described on Ensime's github page.  Follow the Developer Quick Start section for building Ensime.  (Remember we'll configure later.)

- 'sbt stage'

### Building ECB

You should be using a Emacs version of 23.2 or greater. 

- 'cd' into the 'ecb' directory.
- Now byte compile ECB with '$ make'
- Ignore the warnings, there should be no errors.

### Building Scala-Mode

- 'cd' into the 'scala' directory and type '$ make' to byte compile.

## Configuring Scamacs

Many ways to skin this cat.  Here is a straightforward configuration in the .emacs.d/init.el  

Assumes scamacs was git cloned into /code directory.  Adjust accordingly.

    ;; ECB
    (add-to-list 'load-path "/code/scamacs/ecb")
    ;; SCALA  
    (add-to-list 'load-path "/code/scamacs/scala")
    (load "scala-mode-auto")

    (defun scala-setup ()
      ;; turnoff indent tabs mode
      (setq indent-tabs-mode nil)
      (toggle-truncate-lines t)
      (show-paren-mode t)
      (ido-mode t))

    ;; scala mode hooks
    (add-hook 'scala-mode-hook 'scala-setup)

    ;; Ensime 
    (add-to-list 'load-path "/code/scamacs/ensime/dist_2.9.2/elisp")
    (add-to-list 'exec-path "/code/scamacs/ensime/dist_2.9.2/bin")

    (require 'ensime)
    (require 'ensime-ecb)

## Using Scamacs

Ensure you have a correctly setup .ensime file.  See ensime documentation.

'cd' into your scala project directory, and open an scala source file.

    M-x ensime-ecb
    M-x ensime

See the on-line ECB documentation for the ECB project for using ECB.