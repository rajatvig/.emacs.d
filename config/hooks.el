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

(setq yas/snippet-dirs "~/.emacs.d/external/yasnippet/snippets")

(yas/load-directory yas/snippet-dirs)

;;(yas/initialize)

(yas/global-mode 1)

(require 'smart-tab)
(global-smart-tab-mode 1)

(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

(windmove-default-keybindings)
