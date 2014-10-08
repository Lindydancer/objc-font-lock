;;; objc-font-lock-test-setup.el --- Setup and execute all tests.

;;; Commentary:

;; This package sets up a suitable enviroment for testing
;; objc-font-lock, and executes the tests.
;;
;; Usage:
;;
;;   emacs -q -l objc-font-lock-test-setup.el
;;
;; Note that this package assumes that some packages are located in
;; specific locations.
;;
;; Note that different Emacs versions highlight Objective-C slightly
;; differently. The corresponding .faceup file was generated using
;; Emacs 24.3.

;;; Code:

(add-to-list 'load-path (expand-file-name ".."))
(add-to-list 'load-path (expand-file-name "../../faceup"))
(add-to-list 'load-path (expand-file-name "../../../lisp"))

(load-file "../objc-font-lock.el")
(objc-font-lock-global-mode 1)

(load-file "objc-font-lock-test-facit.el")

(setq inhibit-startup-screen t)
(ert t)

;;; objc-font-lock-test-setup.el ends here
