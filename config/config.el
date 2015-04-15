(add-to-list 'default-frame-alist '(font . "Envy Code R-11"))
(set-frame-font "-*-Envy Code R-normal-normal-*-10")

(windmove-default-keybindings)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(load "hooks/hooks")
(load "hooks/programming")
(load "hooks/server")
(load "hooks/yasnippets")

(load "languages/clojure")
(load "languages/html")
(load "languages/javascript")
(load "languages/other")
(load "languages/ruby")
(load "languages/scala")

(load "keys/globals")
(load "keys/keys")
