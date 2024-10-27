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
   `(link ((,class (:foreground ,miasma-tangerine :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,miasma-walnut :underline t :weight normal))))
   `(cursor ((,class (:background ,miasma-reseda))))
   `(region ((,class (:background ,miasma-forest))))
   `(highlight ((,class (:background ,miasma-olive))))
   `(fringe ((,class (:background ,miasma-light-charcoal))))
   `(success ((,class (:foreground ,miasma-eucalyptus))))
   `(warning ((,class (:foreground ,miasma-tangerine))))
   `(error ((,class (:foreground ,miasma-cedar))))
   `(trailing-whitespace ((,class (:background ,miasma-cedar))))

   ;;;;; completions
   `(completions-common-part ((,class (:foreground ,miasma-eucalyptus))))
   `(completions-annotations ((,class (:foreground ,miasma-reseda))))

   ;;;;; dired
   `(dired-directory ((,class (:foreground ,miasma-eucalyptus))))
   `(dired-symlink ((,class (:foreground ,miasma-lemon))))

   ;;;;; mode line
   `(mode-line ((,class (:background ,miasma-forest))))
   `(mode-line-inactive ((,class (:foreground ,miasma-light-gray :background ,miasma-graphite))))

   ;;;;; minibuffer
   `(minibuffer-prompt ((,class (:foreground ,miasma-ecru))))

   ;;;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,miasma-light-gray))))
   `(font-lock-comment-face ((,class (:foreground ,miasma-dark-gray))))
   `(font-lock-constant-face ((,class (:foreground ,miasma-cedar))))
   `(font-lock-function-name-face ((,class (:foreground ,miasma-reseda))))
   `(font-lock-keyword-face ((,class (:foreground ,miasma-eucalyptus))))
   `(font-lock-string-face ((,class (:foreground ,miasma-walnut :weight bold))))
   `(font-lock-type-face ((,class (:foreground ,miasma-brass))))
   `(font-lock-variable-name-face ((,class (:foreground ,miasma-lemon))))
   `(font-lock-warning-face ((,class (:foreground ,miasma-tangerine))))

   ;;;;; line numbers
   `(line-number ((,class (:inherit default :foreground ,miasma-dark-gray))))
   `(line-number-current-line ((,class (:inherit default))))

   ;;;; Third party packages

   ;;;;; diredfl
   `(diredfl-compressed-file-name ((,class :foreground ,miasma-lemon)))
   `(diredfl-compressed-file-suffix ((,class :foreground ,miasma-cedar)))
   `(diredfl-date-time ((,class (:foreground ,miasma-brass))))
   `(diredfl-deletion ((,class :foreground ,miasma-cedar)))
   `(diredfl-deletion-file-name ((,class :foreground ,miasma-cedar)))
   `(diredfl-dir-heading ((,class (:foreground ,miasma-light-gray))))
   `(diredfl-dir-name ((,class (:inherit dired-directory))))
   `(diredfl-dir-priv ((,class (:foreground ,miasma-walnut))))
   `(diredfl-exec-priv ((,class (:foreground ,miasma-tangerine))))
   `(diredfl-file-name ((,class (:foreground ,miasma-light-gray))))
   `(diredfl-file-suffix ((,class (:foreground ,miasma-reseda))))
   `(diredfl-flag-mark ((,class (:foreground ,miasma-tangerine))))
   `(diredfl-flag-mark-line ((,class (:foreground ,miasma-tangerine))))
   `(diredfl-no-priv ((,class (:foreground ,miasma-olive))))
   `(diredfl-number ((,class (:foreground ,miasma-reseda))))
   `(diredfl-read-priv ((,class (:foreground ,miasma-eucalyptus))))
   `(diredfl-symlink ((,class (:inherit dired-symlink))))
   `(diredfl-write-priv ((,class (:foreground ,miasma-cedar))))

   ;;;;; doom-modeline
   `(doom-modeline-buffer-path ((,class (:foreground ,miasma-eucalyptus))))
   `(doom-modeline-buffer-modified ((,class (:foreground ,miasma-lemon))))
   `(doom-modeline-project-dir ((,class (:foreground ,miasma-eucalyptus))))

   ;;;;; git-gutter
   `(git-gutter:added ((,class (:foreground ,miasma-eucalyptus :weight bold))))
   `(git-gutter:deleted ((,class (:foreground ,miasma-cedar :weight bold))))
   `(git-gutter:modified ((,class (:foreground ,miasma-ecru :weight bold))))

   ;; ;;;;; hl-line
   `(hl-line ((,class (:background ,miasma-charcoal))))

   ;;;;; solaire
   `(solaire-default-face ((,class (:background ,miasma-charcoal))))

   ;;;;; show-paren
   `(show-paren-match ((,class (:background ,miasma-reseda-1 :weight bold))))

   ;;;;; rainbow-delimiters
   `(rainbow-delimiters-base-face ((,class (:foreground ,miasma-reseda :weight bold))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,miasma-eucalyptus :weight bold))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,miasma-walnut :weight bold))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,miasma-lemon :weight bold))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,miasma-brass :weight bold))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,miasma-olive :weight bold))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,miasma-copper :weight bold))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,miasma-reseda :weight bold))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,miasma-cedar :weight bold))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,miasma-lemon :weight bold))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,miasma-ecru :weight bold))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,miasma-tangerine :weight bold))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,miasma-obsidian :weight bold))))

   ;;;;; persp-mode
   `(persp-selected-face ((,class (:foreground ,miasma-lemon))))

   ;;;;; vertico
   `(vertico-posframe-border ((,class (:background ,miasma-walnut))))
   `(vertico-posframe-border-2 ((,class (:background ,miasma-tangerine))))
   `(vertico-posframe-border-3 ((,class (:background ,miasma-cedar))))
   `(vertico-posframe-border-4 ((,class (:background ,miasma-ecru))))
   ))

(provide-theme 'miasma)

;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;;; miasma-theme.el ends here
