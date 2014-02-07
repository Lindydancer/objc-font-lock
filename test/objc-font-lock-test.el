;; objc-font-lock-test.el -- Tests for Objc Font Lock.

;; Copyright (C) 2014 Anders Lindgren

;; Author: Anders Lindgren
;; Keywords: languages, faces

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(defun objc-font-lock-test-verify-buffer ()
  (interactive)
  (while (objc-font-lock-match-bracket (point-max))
    (let ((end-brace (match-beginning 3)))
      ;; After expression.
      (goto-char (match-end 2))
      (while (objc-font-lock-match-bracket-content end-brace))
      (assert (eq (point) end-brace)))))


;; objc-font-lock-test.el ends here.
