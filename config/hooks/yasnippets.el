(require 'yasnippet)

(setq yas-snippet-dirs "~/.emacs.d/elpa/yasnippet-20150415.244/snippets/")
(yas/load-directory yas-snippet-dirs)

(yas/initialize)

(yas/global-mode 1)

(define-key yas-minor-mode-map (kbd "M-RET") 'helm-yas-complete)
