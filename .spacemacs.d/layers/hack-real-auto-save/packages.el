;;; packages.el --- hack-real-auto-save layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Yue Yang <g1enyy0ung@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `hack-real-auto-save-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `hack-real-auto-save/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `hack-real-auto-save/pre-init-PACKAGE' and/or
;;   `hack-real-auto-save/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst hack-real-auto-save-packages '((hack-real-auto-save :location local)))

(defun hack-real-auto-save/init-hack-real-auto-save ()
  (use-package hack-real-auto-save
    :init
    (setq hack-real-auto-save-slient t)
    :config
    (hack-real-auto-save-enable)
    ))

;;; packages.el ends here
