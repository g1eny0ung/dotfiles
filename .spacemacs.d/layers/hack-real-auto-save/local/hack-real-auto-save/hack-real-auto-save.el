;;; hack-real-auto-save.el --- Auto save files when idle

;; Filename: hack-real-auto-save.el
;; Description: Auto save files when idle
;; Author: Andy Stewart lazycat.manatee@gmail.com
;; Maintainer: Andy Stewart lazycat.manatee@gmail.com
;; Copyright (C) 2013 ~ 2014, Andy Stewart, all rights reserved.
;; Created: 2013-12-31 00:32:00
;; Version: 0.1
;; Last-Updated: 2014-01-04 14:23:05
;;           By: Andy Stewart
;; URL:
;; Keywords: autosave
;; Compatibility: GNU Emacs 23.0.60.1
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Auto save file when emacs idle
;;

;;; Change log:
;;
;; 2018/01/29
;;      * g1eny0ung <g1enyy0ung@gmail.com> use it as private spacemacs layer
;;      * Little code change
;;      * Rename to hack-real-auto-save
;;
;; 2014/01/04
;;      * Add new function `auto-save-enable' to enable auto-save in user config file.
;;      * Add options: `auto-save-idle' and `auto-save-slient'
;;
;; 2008/10/20
;;      First released.
;;

;;; Code:

(defgroup hack-real-auto-save nil
  "Auto save file when emacs idle."
  :group 'hack-real-auto-save)

(defcustom hack-real-auto-save-idle 1
  "The idle seconds to auto save file."
  :type 'integer
  :group 'hack-real-auto-save)

(defcustom hack-real-auto-save-slient nil
  "Nothing to dirty minibuffer if this option is non-nil."
  :type 'boolean
  :group 'hack-real-auto-save)

(defun hack-real-auto-save-buffers ()
  (interactive)
  (let ((autosave-buffer-list))
    (save-excursion
      (dolist (buf (buffer-list))
        (set-buffer buf)
        (if (and (buffer-file-name) (buffer-modified-p))
            (progn
              (push (buffer-name) autosave-buffer-list)
              (if hack-real-auto-save-slient
                  (with-temp-message ""
                    (basic-save-buffer))
                (basic-save-buffer))
              )))
      ;; Tell user when auto save files.
      (unless hack-real-auto-save-slient
        (cond
         ;; It's stupid tell user if nothing to save.
         ((= (length autosave-buffer-list) 1)
          (message "# Saved %s" (car autosave-buffer-list)))
         ((> (length autosave-buffer-list) 1)
          (message "# Saved %d files: %s"
                   (length autosave-buffer-list)
                   (mapconcat 'identity autosave-buffer-list ", ")))))
      )))

(defun hack-real-auto-save-enable ()
  (interactive)
  (run-with-idle-timer hack-real-auto-save-idle t #'hack-real-auto-save-buffers)
  )

(provide 'hack-real-auto-save)

;;; hack-real-auto-save.el ends here
