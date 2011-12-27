;;; Commentary:
;;
;; The purpose of this file is to set up `slime-lisp-implementations'
;; to allow SLIME to communicate with the Swank server implemented in
;; Clojure. There are four ways to launch a session:
;;
;; 1. Standalone: If you just hit M-x slime, swank-clojure will
;;    download the jars for Clojure, contrib, and swank-clojure,
;;    launch an instance, and connect to it. If you just want to try
;;    out Clojure, this is all you need. Just get Swank Clojure
;;    through ELPA (http://tromey.com/elpa) and stop reading here.
;;
;; 2. Custom classpath: If you want to hack on Clojure or Contrib, set
;;    swank-clojure-classpath to a list of paths to the jars you want to
;;    use and then hit M-x slime.
;;
;; 3. Project: Put your project's dependencies in the lib/ directory,
;;    (either manually or using Leiningen or Maven) then launch
;;    M-x swank-clojure-project. Note that you must have
;;    swank-clojure.jar in the lib/ directory, it will not
;;    automatically add itself to the classpath as it did in past
;;    versions that had to run from a checkout.
;;
;; 4. Standalone Server: Users of leiningen or clojure-maven-plugin
;;    can launch a server from a shell
;;    (http://wiki.github.com/technomancy/leiningen/emacs-integration)
;;    and connect to it from within Emacs using M-x slime-connect.
;;
