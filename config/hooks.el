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

(autopair-global-mode)

(setq yas/snippet-dirs "~/.emacs.d/elpa/yasnippet-20150323.311/snippets/")

(yas/load-directory yas/snippet-dirs)

;;(yas/initialize)

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

(textmate-mode)
(global-linum-mode 1)

(global-hl-line-mode 1)

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
