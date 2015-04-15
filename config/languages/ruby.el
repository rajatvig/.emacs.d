(add-to-list 'auto-mode-alist '("\\Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\*.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb" . nxml-mode))
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(setq rbenv-installation-dir "/usr/local/opt/rbenv")

(require 'rbenv)
(global-rbenv-mode)
