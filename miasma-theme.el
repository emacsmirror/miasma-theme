;;; miasma-theme.el --- A low contrast color theme for Emacs

;;; Commentary:
;; This is a port of the NeoVim Miasma theme for Emacs.

;;; Code:
(deftheme miasma
  "Miasma color theme inspired by woods."
  :background-mode 'dark
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))
      ;; Palette
      (miasma-light-charcoal "#222222")
      (miasma-charcoal "#1c1c1c")
      (miasma-onyx "#101010")
      (miasma-obsidian "#151515")
      (miasma-graphite "#444444")
      (miasma-dark-gray "#666666")
      (miasma-light-gray "#c2c2b0")
      (miasma-forest "#242d1d")
      (miasma-olive "#43492a")
      (miasma-eucalyptus "#5f875f")
      (miasma-reseda "#78834b")
      (miasma-reseda-1 "#78824b")
      (miasma-walnut "#685742")
      (miasma-tangerine "#fd9720")
      (miasma-copper "#bb7744")
      (miasma-cedar "#b36d43")
      (miasma-lemon "#fbec9f")
      (miasma-ecru "#d7c483")
      (miasma-brass "#c9a554"))

  (custom-theme-set-faces
   'miasma
   ;;;; Built-in packages
   ;;;;; Basic
   `(default ((,class (:foreground ,miasma-light-gray :background ,miasma-light-charcoal))))
   `(cursor ((,class (:background ,miasma-reseda))))
   `(region ((,class (:background ,miasma-eucalyptus))))
   `(highlight ((,class (:background ,miasma-charcoal))))
   `(fringe ((,class (:background ,miasma-light-charcoal))))

   `(mode-line ((,class (:foreground ,miasma-light-gray :background ,miasma-walnut))))
   `(mode-line-inactive ((,class (:foreground ,miasma-light-gray :background ,miasma-graphite))))

   ;;;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,miasma-light-gray))))
   `(font-lock-comment-face ((,class (:foreground ,miasma-dark-gray))))
   `(font-lock-constant-face ((,class (:foreground ,miasma-cedar))))
   `(font-lock-function-name-face ((,class (:foreground ,miasma-reseda))))
   `(font-lock-keyword-face ((,class (:foreground ,miasma-eucalyptus))))
   `(font-lock-string-face ((,class (:foreground ,miasma-walnut))))
   `(font-lock-type-face ((,class (:foreground ,miasma-brass))))
   `(font-lock-variable-name-face ((,class (:foreground ,miasma-lemon))))
   `(font-lock-warning-face ((,class (:foreground ,miasma-tangerine))))

   ;;;;; line numbers
   `(line-number ((,class (:inherit default :foreground ,miasma-dark-gray))))
   `(line-number-current-line ((,class (:inherit default))))

   ;;;; Third party packages

   ;;;;; doom-modeline
   `(doom-modeline-bar ((,class (:background ,miasma-cedar))))
   `(doom-modeline-bar-inactive ((,class (:background ,miasma-reseda))))

   ;;;;; hl-line
   `(hl-line-face ((,class (:background ,miasma-charcoal))))
   ))

(provide-theme 'miasma)

;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;;; miasma-theme.el ends here
