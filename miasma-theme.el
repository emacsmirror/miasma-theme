;;; miasma-theme.el --- A low contrast color theme for Emacs

;;; Commentary:
;; A low contrast color theme for Emacs inspired by the woods.
;; This is mostly a port of the NeoVim Miasma theme.

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
      (miasma-marble "#eaeaea")
      (miasma-river "#1f3a5f")
      (miasma-sky "#87CEEB")
      (miasma-forest "#242d1d")
      (miasma-moss "#2f361f")
      (miasma-olive "#43492a")
      (miasma-eucalyptus "#5f875f")
      (miasma-reseda "#78834b")
      (miasma-walnut "#685742")
      (miasma-tangerine "#fd9720")
      (miasma-copper "#bb7744")
      (miasma-cedar "#b36d43")
      (miasma-terracota "#c86448")
      (miasma-fire "#661010")
      (miasma-lemon "#fbec9f")
      (miasma-ecru "#d7c483")
      (miasma-brass "#c9a554"))

  (custom-theme-set-faces
   'miasma
   ;;;; Built-in packages
   ;;;;; Basic
   `(default ((,class (:foreground ,miasma-light-gray :background ,miasma-light-charcoal))))
   `(link ((,class (:foreground ,miasma-brass :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,miasma-walnut :underline t :weight normal))))
   `(cursor ((,class (:background ,miasma-reseda))))
   `(region ((,class (:background ,miasma-moss))))
   `(highlight ((,class (:background ,miasma-olive))))
   `(fringe ((,class (:background ,miasma-light-charcoal))))
   `(success ((,class (:foreground ,miasma-eucalyptus))))
   `(warning ((,class (:foreground ,miasma-tangerine))))
   `(error ((,class (:foreground ,miasma-terracota))))
   `(trailing-whitespace ((,class (:background ,miasma-fire))))
   `(shadow ((,class (:foreground ,miasma-dark-gray))))
   `(secondary-selection ((,class (:background ,miasma-olive))))

   ;;;;; completions
   `(completions-common-part ((,class (:foreground ,miasma-eucalyptus))))
   `(completions-annotations ((,class (:foreground ,miasma-reseda))))

   ;;;;; dired
   `(dired-directory ((,class (:foreground ,miasma-eucalyptus))))
   `(dired-symlink ((,class (:foreground ,miasma-lemon))))

   ;;;;; flyspell
   `(flyspell-duplicate ((,class :underline (:style wave :color ,miasma-tangerine))))
   `(flyspell-incorrect ((,class :underline (:style wave :color ,miasma-terracota))))

   ;;;;; mode line
   `(mode-line ((,class (:background ,miasma-forest))))
   `(mode-line-inactive ((,class (:foreground ,miasma-light-gray :background ,miasma-graphite))))

   ;;;;; minibuffer
   `(minibuffer-prompt ((,class (:foreground ,miasma-ecru))))

   ;;;;; org
   `(org-date ((,class (:foreground ,miasma-sky :underline (:style line)))))
   `(org-todo ((,class (:foreground ,miasma-terracota :weight bold))))
   `(org-done ((,class (:foreground ,miasma-eucalyptus :weight bold))))

   ;;;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,miasma-light-gray))))
   `(font-lock-comment-face ((,class (:foreground ,miasma-dark-gray))))
   `(font-lock-constant-face ((,class (:foreground ,miasma-copper))))
   `(font-lock-function-name-face ((,class (:foreground ,miasma-reseda))))
   `(font-lock-keyword-face ((,class (:foreground ,miasma-eucalyptus))))
   `(font-lock-string-face ((,class (:foreground ,miasma-walnut :weight bold))))
   `(font-lock-type-face ((,class (:foreground ,miasma-brass))))
   `(font-lock-variable-name-face ((,class (:foreground ,miasma-lemon))))
   `(font-lock-variable-use-face ((,class (:foreground ,miasma-lemon))))
   `(font-lock-warning-face ((,class (:foreground ,miasma-tangerine))))
   `(font-lock-preprocessor-face ((,class (:foreground ,miasma-cedar))))

   ;;;;; flycheck
   `(flycheck-info ((,class (:underline (:style wave :color ,miasma-eucalyptus)))))
   `(flycheck-error ((,class (:underline (:style wave :color ,miasma-terracota)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,miasma-tangerine)))))

   ;;;;; line numbers
   `(line-number ((,class (:inherit default :foreground ,miasma-dark-gray))))
   `(line-number-current-line ((,class (:inherit default))))

   ;;;; Third party packages

   ;;;;; ace-window
   `(aw-leading-char-face ((,class :foreground ,miasma-terracota :height 1.5 :weight bold)))
   `(aw-minibuffer-leading-char-face ((,class :foreground ,miasma-terracota)))

   ;;;;; avy
   `(avy-goto-char-timer-face ((,class :background ,miasma-olive :weight bold)))
   `(avy-lead-face ((,class :foreground ,miasma-light-gray :background ,miasma-terracota :weight bold)))
   `(avy-lead-face-0 ((,class :foreground ,miasma-light-gray :background ,miasma-river :weight bold)))
   `(avy-lead-face-1 ((,class :foreground ,miasma-light-gray :background ,miasma-dark-gray :weight bold)))
   `(avy-lead-face-2 ((,class :background ,miasma-lemon :weight bold)))

   ;;;;; company
   `(company-tooltip ((,class (:foreground ,miasma-light-gray :background ,miasma-obsidian :extend t))))
   `(company-tooltip-common ((,class (:foreground ,miasma-eucalyptus))))
   `(company-tooltip-annotation ((,class (:foreground ,miasma-copper))))
   `(company-tooltip-selection ((,class (:background ,miasma-olive))))
   `(company-echo-common ((,class (:inherit company-tooltip-common))))
   `(company-tooltip-scrollbar-thumb ((,class (:background ,miasma-moss))))
   `(company-tooltip-quick-access ((,class (:foreground ,miasma-lemon))))

   ;;;;; copilot-mode
   `(copilot-overlay-face ((,class (:foreground ,miasma-graphite))))

   ;;;;; diredfl
   `(diredfl-compressed-file-name ((,class :foreground ,miasma-lemon)))
   `(diredfl-compressed-file-suffix ((,class :foreground ,miasma-cedar)))
   `(diredfl-date-time ((,class (:foreground ,miasma-brass))))
   `(diredfl-deletion ((,class :foreground ,miasma-terracota)))
   `(diredfl-deletion-file-name ((,class :foreground ,miasma-terracota)))
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
   `(doom-modeline-bar ((,class (:background ,miasma-eucalyptus))))
   `(doom-modeline-buffer-path ((,class (:foreground ,miasma-eucalyptus))))
   `(doom-modeline-buffer-modified ((,class (:foreground ,miasma-lemon))))
   `(doom-modeline-project-dir ((,class (:foreground ,miasma-eucalyptus))))

   ;;;;; git-gutter
   `(git-gutter:added ((,class (:foreground ,miasma-eucalyptus :weight bold))))
   `(git-gutter:deleted ((,class (:foreground ,miasma-terracota :weight bold))))
   `(git-gutter:modified ((,class (:foreground ,miasma-ecru :weight bold))))

   ;;;;; hl-line
   `(hl-line ((,class (:background ,miasma-charcoal))))

   ;;;;; magit
   `(magit-bisect-bad ((,class (:foreground ,miasma-fire))))
   `(magit-bisect-good ((,class (:foreground ,miasma-olive))))
   `(magit-bisect-skip ((,class (:foreground ,miasma-brass))))
   `(magit-bisect-skip ((,class (:foreground ,miasma-brass))))
   `(magit-blame-highlight ((,class (:foreground ,miasma-marble :background ,miasma-dark-gray :extend t))))
   `(magit-branch-local ((,class (:foreground ,miasma-copper))))
   `(magit-branch-local ((,class (:foreground ,miasma-copper))))
   `(magit-branch-local ((,class (:foreground ,miasma-copper))))
   `(magit-branch-remote ((,class (:foreground ,miasma-reseda))))
   `(magit-cherry-equivalent ((,class (:foreground ,miasma-terracota))))
   `(magit-cherry-equivalent ((,class (:foreground ,miasma-terracota))))
   `(magit-cherry-unmatched ((,class (:foreground ,miasma-sky))))
   `(magit-diff-base ((,class (:foreground ,miasma-lemon :background ,miasma-walnut :extend t))))
   `(magit-diff-base-highlight ((,class (:foreground ,miasma-lemon :background ,miasma-olive))))
   `(magit-diff-context ((,class (:foreground ,miasma-dark-gray :extend t))))
   `(magit-diff-context-highlight ((,class (:foreground ,miasma-light-gray :background ,miasma-light-charcoal))))
   `(magit-diff-file-heading ((,class (:foreground ,miasma-reseda))))
   `(magit-diff-hunk-heading ((,class (:foreground ,miasma-light-gray :background ,miasma-graphite))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,miasma-light-gray :background ,miasma-graphite :extend t))))
   `(magit-diff-hunk-heading-selection ((,class (:foreground ,miasma-cedar :extend t :inherit magit-diff-heading-highlight))))
   `(magit-diff-lines-heading ((,class (:foreground ,miasma-light-gray :background ,miasma-copper))))
   `(magit-diffstat-added ((,class (:foreground ,miasma-olive))))
   `(magit-diffstat-removed ((,class (:foreground ,miasma-fire))))
   `(magit-dimmed ((,class (:foreground ,miasma-graphite))))
   `(magit-hash ((,class (:foreground ,miasma-olive))))
   `(magit-log-author ((,class (:foreground ,miasma-terracota))))
   `(magit-log-author ((,class (:foreground ,miasma-terracota))))
   `(magit-log-date ((,class (:foreground ,miasma-light-gray))))
   `(magit-log-graph ((,class (:foreground ,miasma-light-gray))))
   `(magit-process-ng ((,class (:foreground ,miasma-fire))))
   `(magit-process-ok ((,class (:foreground ,miasma-eucalyptus))))
   `(magit-reflog-amend ((,class (:foreground ,miasma-tangerine))))
   `(magit-reflog-checkout ((,class (:foreground ,miasma-river))))
   `(magit-reflog-checkout ((,class (:foreground ,miasma-river))))
   `(magit-reflog-commit ((,class (:foreground ,miasma-eucalyptus))))
   `(magit-reflog-merge ((,class (:foreground ,miasma-reseda))))
   `(magit-reflog-rebase ((,class (:foreground ,miasma-terracota))))
   `(magit-reflog-remote ((,class (:foreground ,miasma-sky))))
   `(magit-reflog-reset ((,class (:foreground ,miasma-fire))))
   `(magit-reflog-reset ((,class (:foreground ,miasma-fire))))
   `(magit-refname ((,class (:foreground ,miasma-light-gray))))
   `(magit-section-heading ((,class (:foreground ,miasma-lemon :weight bold :extend t))))
   `(magit-section-heading-selection ((,class (:foreground ,miasma-cedar :extend t :inherit magit-diff-file-heading-highlight))))
   `(magit-section-heading-selection ((,class (:foreground ,miasma-cedar :extend t))))
   `(magit-section-highlight ((,class (:background ,miasma-light-charcoal))))
   `(magit-sequence-drop ((,class (:foreground ,miasma-fire))))
   `(magit-sequence-head ((,class (:foreground ,miasma-sky))))
   `(magit-sequence-part ((,class (:foreground ,miasma-lemon))))
   `(magit-sequence-part ((,class (:foreground ,miasma-lemon))))
   `(magit-sequence-stop ((,class (:foreground ,miasma-reseda))))
   `(magit-signature-error ((,class (:foreground ,miasma-sky))))
   `(magit-signature-expired ((,class (:background ,miasma-tangerine))))
   `(magit-signature-revoked ((,class (:background ,miasma-terracota))))
   `(magit-signature-untrusted ((,class (:foreground ,miasma-reseda))))
   `(magit-tag ((,class (:foreground ,miasma-lemon))))

   ;;;;; org-modern
   `(org-modern-tag ((,class (:foreground ,miasma-light-gray :inherit (secondary-selection org-modern-label)))))
   `(org-modern-done ((,class (:foreground ,miasma-light-gray :background ,miasma-olive :inherit org-modern-label))))
   `(org-modern-todo ((,class (:foreground ,miasma-fire :background ,miasma-terracota  :inherit (org-todo org-modern-label)))))

   ;;;;; orderless
   `(orderless-match-face-0 ((,class :inherit bold :foreground ,miasma-tangerine)))
   `(orderless-match-face-1 ((,class :inherit bold :foreground ,miasma-lemon)))
   `(orderless-match-face-2 ((,class :inherit bold :foreground ,miasma-eucalyptus)))
   `(orderless-match-face-3 ((,class :inherit bold :foreground ,miasma-cedar)))

   ;;;;; persp-mode
   `(persp-selected-face ((,class (:foreground ,miasma-lemon))))

   ;;;;; rainbow-delimiters
   `(rainbow-delimiters-base-face ((,class (:foreground ,miasma-reseda :weight bold))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,miasma-brass :weight bold))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,miasma-copper :weight bold))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,miasma-lemon :weight bold))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,miasma-eucalyptus :weight bold))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,miasma-cedar :weight bold))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,miasma-walnut :weight bold))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,miasma-reseda :weight bold))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,miasma-tangerine :weight bold))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,miasma-dark-gray :weight bold))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,miasma-ecru :weight bold))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,miasma-olive :weight bold))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,miasma-obsidian :weight bold))))

   ;;;;; solaire
   `(solaire-default-face ((,class (:background ,miasma-charcoal))))
   `(solaire-hl-line-face ((,class (:background ,miasma-obsidian))))

   ;;;;; show-paren
   `(show-paren-match ((,class (:background ,miasma-moss :weight bold))))

   ;;;;; transient
   `(transient-inactive-value ((,class :foreground ,miasma-graphite)))
   `(transient-key-exit ((,class :foreground ,miasma-cedar)))
   `(transient-key-stay ((,class :foreground ,miasma-ecru)))

   ;;;;; vertico
   `(vertico-posframe-border ((,class (:background ,miasma-walnut))))
   `(vertico-posframe-border-2 ((,class (:background ,miasma-tangerine))))
   `(vertico-posframe-border-3 ((,class (:background ,miasma-cedar))))
   `(vertico-posframe-border-4 ((,class (:background ,miasma-ecru))))

   ;;;;; web-mode
   `(web-mode-html-attr-engine-face ((,class (:foreground ,miasma-reseda))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,miasma-reseda))))
   `(web-mode-html-tag-bracket-face ((,class (:foreground ,miasma-eucalyptus))))
   `(web-mode-html-tag-face ((,class (:foreground ,miasma-eucalyptus))))
   ))

(provide-theme 'miasma)

;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;;; miasma-theme.el ends here
