(require 'ensime)
(require 'ecb)
(require 'ensime-tree-type-inspector)
(require 'ensime-tree-package-inspector)

;; Main startup ensime with ecb support
(defun ensime-ecb ()
  (interactive)
  (ensime)
  (ecb-activate))

(provide 'ensime-ecb)
