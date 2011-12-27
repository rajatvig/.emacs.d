(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'load-path "~/.emacs.d/ext")
(add-to-list 'load-path "~/.emacs.d/external/rvm.el")
(add-to-list 'load-path "~/.emacs.d/external/rspec-mode")
(add-to-list 'load-path "~/.emacs.d/external/cucumber.el")
(add-to-list 'load-path "~/.emacs.d/external/rinari")
(add-to-list 'load-path "~/.emacs.d/external/yasnippet")

(package-initialize)

(load-theme 'wombat)

(require 'puppet-mode)
(require 'slim-mode)
(require 'rvm)
(require 'rspec-mode)
(require 'feature-mode)
(require 'rinari)
(require 'yasnippet)

(load "autoloads")
(load "osx")
(load "rvm-help")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode t)
 '(js-indent-level 2)
 '(js2-auto-indent-p t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-cleanup-whitespace t)
 '(js2-indent-on-enter-key t)
 '(ruby-comment-column 96)
 '(safe-local-variable-values (quote ((encoding . utf-8) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby") (whitespace-line-column . 80) (lexical-binding . t))))
 '(setq tab-width t)
 '(setq-default c-basic-offset)
 '(standard-indent 2)
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 22 24 26 28 30)))
 '(tab-width 2))

(setq org-startup-indented t)

(set-default-font "Terminus-11")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
