;; objc-font-lock-screenshot-setup.el --- prepare for screenshot.  -*- lexical-binding: t; -*-

;; Usage:
;;
;;   emacs -q -l objc-font-lock-screenshot-setup.el
;;
;;   Take screenshot. OS X: Cmd-Shift-4 SPC click on window.

(setq inhibit-startup-screen t)

(blink-cursor-mode -1)

(defvar objc-font-lock-screenshot-dir
  (or (and load-file-name
           (file-name-directory load-file-name))
      default-directory))

(load (concat objc-font-lock-screenshot-dir "../objc-font-lock.el"))
(objc-font-lock-global-mode 1)
(find-file (concat objc-font-lock-screenshot-dir "demo.m"))

(set-frame-size (selected-frame) 80 41)

(message "")

;; objc-font-lock-screenshot-setup.el ends here
