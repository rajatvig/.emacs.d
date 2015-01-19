;; fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))
;;(push "/usr/local/bin" exec-path)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)

(add-to-list 'load-path "~/.emacs.d/ext")

(add-to-list 'load-path "~/.emacs.d/external/rvm.el")
(add-to-list 'load-path "~/.emacs.d/external/rspec-mode")
(add-to-list 'load-path "~/.emacs.d/external/cucumber.el")
(add-to-list 'load-path "~/.emacs.d/external/yasnippet")
(add-to-list 'load-path "~/.emacs.d/external/yaml-mode")
(add-to-list 'load-path "~/.emacs.d/external/markdown-mode")
(add-to-list 'load-path "~/.emacs.d/external/magithub")
;;(add-to-list 'load-path "~/.emacs.d/external/edts")
(add-to-list 'load-path "~/.emacs.d/external/auto-complete")
(add-to-list 'load-path "~/.emacs.d/external/smart-tab")
(add-to-list 'load-path "~/.emacs.d/external/emacs-slim")
(add-to-list 'load-path "~/.emacs.d/external/maxframe.el")
(add-to-list 'load-path "~/.emacs.d/external/ensime/dist/elisp/")

(add-to-list 'load-path "~/.emacs.d/external/jade-mode")
(require 'sws-mode)
(require 'jade-mode)
(require 'stylus-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(package-initialize)

(load "autoloads")
(load "osx")
(load "rvm-help")

(require 'color-theme-sanityinc-tomorrow)

;;(load-theme 'wombat)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(feature-use-rvm t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode t)
 '(js-indent-level 2)
 '(js2-auto-indent-p t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-cleanup-whitespace t)
 '(js2-indent-on-enter-key t)
 '(rspec-use-rvm t)
 '(ruby-comment-column 96)
 '(safe-local-variable-values (quote ((enconing . utf-8) (erlang-indent-level . 4) (encoding . utf-8) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby") (whitespace-line-column . 80) (lexical-binding . t))))
 '(setq tab-width t)
 '(setq-default c-basic-offset)
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 22 24 26 28 30)))
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(workgroups-mode t))

(setq org-startup-indented t)

(set-default-font "Droid Sans Mono-9")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "apple" :family "Aurulent Sans Mono")))))

(add-hook 'before-save-hook 'delete-trailing-whitespace)
;;(add-hook 'write-file-hooks (lambda () (untabify (point-min) (point-max))))

(require 'puppet-mode)
(require 'rvm)
(require 'rspec-mode)
(require 'feature-mode)
(require 'yasnippet)
(require 'yaml-mode)
(require 'markdown-mode)
(require 'magithub)
(require 'autopair)
(require 'workgroups)
(require 'slim-mode)
(require 'ensime)
;;(require 'edts-start)

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

(defun flymake-jade-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                 'flymake-create-temp-intemp))
     (local-file (file-relative-name
                  temp-file
                  (file-name-directory buffer-file-name)))
     (arglist (list local-file)))
    (list "jade" arglist)))
(setq flymake-err-line-patterns
       (cons '("\\(.*\\): \\(.+\\):\\([[:digit:]]+\\)$"
              2 3 nil 1)
            flymake-err-line-patterns))
(add-to-list 'flymake-allowed-file-name-masks
         '("\\.jade\\'" flymake-jade-init))
(load "autoloads")
(load "keys")
(load "osx")
(load "hooks")
(load "rvm-help")
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(load "theme")

(load "server")
(unless (server-running-p) (server-start))
