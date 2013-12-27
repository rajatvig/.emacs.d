(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")
(autoload 'yaml-mode "yaml-mode" "major mode for yaml")

(add-to-list 'auto-mode-alist '("\\.js" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.erl" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.erb" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\*.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\*.template$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\*.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\*.feature$", org-mode))
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
(add-to-list 'auto-mode-alist '("\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\.sbt$" . scala-mode))
(add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))

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

(setq nrepl-hide-special-buffers t)
;;(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
