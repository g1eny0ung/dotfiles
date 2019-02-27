;;; packages.el --- hack-cider layer packages file for Spacemacs.
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
;; added to `hack-cider-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `hack-cider/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `hack-cider/pre-init-PACKAGE' and/or
;;   `hack-cider/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst hack-cider-packages '(cider))

(defun cider-eval-defun-at-point-and-append ()
  (interactive)
  (cider-pprint-eval-defun-at-point 1)
  )

(defun hack-cider/post-init-cider ()
  (with-eval-after-load 'cider
    (spacemacs/set-leader-keys-for-major-mode 'clojure-mode
      "ea" 'cider-eval-defun-at-point-and-append))
  )

;;; packages.el ends here
