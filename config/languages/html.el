(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))
(add-to-list 'auto-mode-alist '("\\.fish$" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))
(add-to-list 'auto-mode-alist '("\\*.template$" . haml-mode))
(add-to-list 'auto-mode-alist '("\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\*.scss$" . sass-mode))

(defun flymake-jade-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                 'flymake-create-temp-intemp))
     (local-file (file-relative-name
                  temp-file
                  (file-name-directory buffer-file-name)))
     (arglist (list local-file)))
    (list "jade" arglist)))
