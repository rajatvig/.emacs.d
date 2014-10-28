;; fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))
;;(push "/usr/local/bin" exec-path)

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'load-path "~/.emacs.d/config")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
	 (quote
		("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(edts-inhibit-package-check t)
 '(feature-use-rvm t)
 '(haskell-mode-hook
	 (quote
		(turn-on-haskell-indent turn-on-haskell-indentation)))
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
 '(safe-local-variable-values
	 (quote
		((enconing . utf-8)
		 (erlang-indent-level . 4)
		 (encoding . utf-8)
		 (ruby-compilation-executable . "ruby")
		 (ruby-compilation-executable . "ruby1.8")
		 (ruby-compilation-executable . "ruby1.9")
		 (ruby-compilation-executable . "rbx")
		 (ruby-compilation-executable . "jruby")
		 (whitespace-line-column . 80)
		 (lexical-binding . t))))
 '(setq tab-width t)
 '(setq-default c-basic-offset)
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 22 24 26 28 30)))
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(workgroups-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "apple" :family "Aurulent Sans Mono")))))

(package-initialize)

(load "autoloads")
(load "keys")
(load "osx")
(load "hooks")
(load "rvm-help")
(load "theme")
