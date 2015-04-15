(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)

(add-hook 'clojure-mode-hook 'highlight-parentheses-mode)
(add-hook 'clojure-mode-hook 'cider-mode)

;;(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
