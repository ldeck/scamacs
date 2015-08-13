# Scamacs

Scamacs provides a number of predefined layouts for ecb and enhances ensime's package and type inspectors.

# Installing Scamacs

## Declaration of it wasn't me.

There is little original code in Scamacs.  It is simply the confluence of three major pieces of Scala related elisp: Ensime, Scala-Mode, and ECB amalgamated on Saturday morning.  The primary authors deserve full credit for the respective components.

## Fork Difference with RayRacine/scamacs

I have removed the submodules for ecb, ensime and the custom scala mode.

Instead, this readme directs users to install them via the melpa package manager.

Thus this scamacs only includes what makes scamacs unique.

## Emacs Version
The following has been tested on emacs 24.2 and 24.5.  Earlier versions of emacs have not been tested.

## Setting up Scamacs

### Prerequisites

Scamacs relies upon Ensime, ECB, and the Scala modes for emacs.

You can install the following via [MELPA](http://melpa.org/#/getting-started "MELPA getting started").

- [ecb](http://melpa.org/#/ecb)
- [Ensime](http://melpa.org/#/ensime)

### Git Cloning and Configure

Scamacs is self-contained. Simply clone it and load it.

Well, of course, you need to have installed the above listed prerequisites.

Then, clone scamacs somewhere.

    $ git clone http://github.com/ldeck/scamacs.git /code/scamacs

Here is a straightforward configuration in the .emacs.d/init.el, assuming you have cloned scamacs into /code/scamacs. Adjust accordingly.

    ;; load Scamacs
    (add-to-list 'load-path "/code/scamacs/scamacs")

    (require 'ensime)
    (require 'ensime-ecb)

## Using Scamacs

Ensure you have a correctly setup .ensime file. See ensime [Quick Start Guide](https://github.com/ensime/ensime-emacs/wiki/Quick-Start-Guide "Ensime Quick Start Guide").

'cd' into your scala project directory, and open an scala source file.

    M-x ensime
    M-x ensime-ecb

See the on-line ECB [documentation](http://melpa.org/#/ecb) for the ECB project for using ECB.

## Bugs

In ensime-ecb mode the cursor is regularly moved into the buffer.