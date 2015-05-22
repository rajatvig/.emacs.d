(require 'helm-config)
(require 'smart-tab)
(require 'textmate)
(require 'smex)

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'load-file 'idle-highlight-mode)

(helm-mode t)
(helm-adaptative-mode t)
(setq helm-adaptive-history (quote nil))
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x

(textmate-mode)

(global-smart-tab-mode 1)
(global-linum-mode 1)
(global-hl-line-mode 1)
(global-anzu-mode +1)
(global-diff-hl-mode +1)
;; (global-aggressive-indent-mode 1)

(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; Don't ever make audible sounds.
(setq visible-bell 't)

;; Don't flash either
(setq ring-bell-function 'ignore)

(setq tab-width 2 indent-tabs-mode nil)
(setq neo-theme 'ascii)
(setq make-backup-files nil)
(setq inhibit-startup-message t)

(ido-mode +1)
(ido-ubiquitous-mode +1)

;;; smarter fuzzy matching for ido
(flx-ido-mode +1)

;; disable ido faces to see flx highlights
(setq ido-use-faces nil)

(smex-initialize)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'volatile-highlights)
(volatile-highlights-mode t)

(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)
