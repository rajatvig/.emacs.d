;; Highlight-parentheses
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))

(require 'autopair)
(autopair-global-mode)

(projectile-global-mode)

(require 'helm-projectile)
(helm-projectile-on)

(add-hook 'after-init-hook #'global-flycheck-mode)
