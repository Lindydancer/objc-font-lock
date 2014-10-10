;;; objc-font-lock-test-facit.el --- Regression test for Objc Font Lock.

;; Copyright (C) 2014 Anders Lindgren

;; Author: Anders Lindgren
;; Keywords: faces languages

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Regression test of `objc-font-lock', a package providing additional
;; font-lock rules for Objective-C. This module verifies fontification
;; of a number of files taken from real projects. This is done by
;; keeing a text representation of the fontification using `faceup'
;; markup, in addition to the original source file.
;;
;; The actual check is performed using `ert' (part of Emacs), with
;; font-lock test function provided by `faceup'.

;;; Code:

(require 'faceup)

(defvar objc-font-lock-test-facit-dir (faceup-this-file-directory)
  "The directory this file is located in.")

(defun objc-font-lock-test-facit (file)
  "Test that Objective-C FILE is fontified as the .faceup file describes.

FILE is interpreted as relative to this source directory."
  (faceup-test-font-lock-file 'objc-mode
                              (concat
                               objc-font-lock-test-facit-dir
                               file)))
(faceup-defexplainer objc-font-lock-test-facit)


(ert-deftest objc-font-lock-file-test ()
  (should (objc-font-lock-test-facit "facit/Emacs/nsterm.m")))

(provide 'objc-font-lock-test-facit)

;; objc-font-lock-test-facit.el ends here.
