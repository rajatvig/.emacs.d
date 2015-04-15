;; Highlight-parentheses
(require 'highlight-parentheses)
(require 'autopair)
(require 'helm-projectile)
(require 'which-func)

(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))

(autopair-global-mode)

(projectile-global-mode)

(helm-projectile-on)

(which-function-mode 1)

(add-hook 'after-init-hook #'global-flycheck-mode)
