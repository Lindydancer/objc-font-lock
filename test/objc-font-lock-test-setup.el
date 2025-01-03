;;; objc-font-lock-test-setup.el --- Setup and execute all tests.  -*- lexical-binding: t; -*-

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

(setq inhibit-startup-screen t)
(prefer-coding-system 'utf-8)

(defvar objc-font-lock-test-setup-directory
  (if load-file-name
      (file-name-directory load-file-name)
    default-directory))

(dolist (dir '("." ".." "../../faceup"))
  (add-to-list 'load-path (concat objc-font-lock-test-setup-directory dir)))

(require 'objc-font-lock)
(require 'objc-font-lock-test-facit)

(ert t)

;;; objc-font-lock-test-setup.el ends here
