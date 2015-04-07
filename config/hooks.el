(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Paredit
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)

;; Highlight-parentheses
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))

(add-hook 'clojure-mode-hook 'highlight-parentheses-mode)
(add-hook 'clojure-mode-hook 'cider-mode)

;;(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
;;(add-hook 'write-file-hooks (lambda () (untabify (point-min) (point-max))))

(require 'autopair)
(autopair-global-mode)

(projectile-global-mode)

(require 'helm-config)

(helm-mode t)
(helm-adaptative-mode t)

(require 'helm-projectile)
(helm-projectile-on)

(require 'yasnippet)
(setq yas/snippet-dirs "~/.emacs.d/elpa/yasnippet-20150405.1526/snippets/")
(yas/load-directory yas/snippet-dirs)

(yas/initialize)

(yas/global-mode 1)

(require 'smart-tab)
(global-smart-tab-mode 1)

;;(require 'maxframe)
;;(add-hook 'window-setup-hook 'maximize-frame t)

(add-hook 'after-init-hook #'global-flycheck-mode)

(windmove-default-keybindings)

;; Don't ever make audible sounds.
(setq visible-bell 't)
;; Don't flash either
(setq ring-bell-function 'ignore)

(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(setq inhibit-startup-message t)

(require 'textmate)
(textmate-mode)
(global-linum-mode 1)

(global-hl-line-mode 1)

(setq tab-width 2
      indent-tabs-mode nil)

(setq neo-theme 'ascii)

;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/external/auto-complete/dict")
;; (require 'auto-complete-config)

;; (ac-config-default)
;; (auto-complete-mode-maybe)
(edit-server-start)

(require 'server)
(unless (server-running-p) (server-start))

(setq make-backup-files nil)

(define-key yas-minor-mode-map (kbd "M-RET") 'yas-expand)

(defun flymake-jade-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                 'flymake-create-temp-intemp))
     (local-file (file-relative-name
                  temp-file
                  (file-name-directory buffer-file-name)))
     (arglist (list local-file)))
    (list "jade" arglist)))
