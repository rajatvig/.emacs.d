;;; avy-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "avy-jump" "avy-jump.el" (21837 40743 0 0))
;;; Generated autoloads from avy-jump.el

(autoload 'avy-goto-char "avy-jump" "\
Read one char and jump to it.
The window scope is determined by `avy-all-windows' (ARG negates it).

\(fn &optional ARG)" t nil)

(autoload 'avy-goto-char-2 "avy-jump" "\
Read two consecutive chars and jump to the first one.
The window scope is determined by `avy-all-windows' (ARG negates it).

\(fn &optional ARG)" t nil)

(autoload 'avy-isearch "avy-jump" "\
Jump to one of the current isearch candidates.

\(fn)" t nil)

(autoload 'avy-goto-word-0 "avy-jump" "\
Jump to a word start.
The window scope is determined by `avy-all-windows' (ARG negates it).

\(fn ARG)" t nil)

(autoload 'avy-goto-word-1 "avy-jump" "\
Read one char at word start and jump there.
The window scope is determined by `avy-all-windows' (ARG negates it).

\(fn &optional ARG)" t nil)

(autoload 'avy-goto-subword-0 "avy-jump" "\
Jump to a word or subword start.

The window scope is determined by `avy-all-windows' (ARG negates it).

When PREDICATE is non-nil it's a function of zero parameters that
should return true.

\(fn &optional ARG PREDICATE)" t nil)

(autoload 'avy-goto-subword-1 "avy-jump" "\
Prompt for a subword start char and jump there.
The window scope is determined by `avy-all-windows' (ARG negates it).
The case is ignored.

\(fn &optional ARG)" t nil)

(autoload 'avy-goto-line "avy-jump" "\
Jump to a line start in current buffer.

\(fn &optional ARG)" t nil)

(autoload 'avy-copy-line "avy-jump" "\
Copy a selected line above the current line.
ARG lines can be used.

\(fn ARG)" t nil)

(autoload 'avy-move-line "avy-jump" "\
Move a selected line above the current line.
ARG lines can be used.

\(fn ARG)" t nil)

(autoload 'avy-copy-region "avy-jump" "\
Select two lines and copy the text between them here.

\(fn)" t nil)

(autoload 'avy-setup-default "avy-jump" "\
Setup the default shortcuts.

\(fn)" nil nil)

(autoload 'avy-goto-char-timer "avy-jump" "\
Read one or two consecutive chars and jump to the first one.
The window scope is determined by `avy-all-windows' (ARG negates it).

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("avy-init.el" "avy-pkg.el" "avy.el") (21837
;;;;;;  40743 37208 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; avy-autoloads.el ends here
