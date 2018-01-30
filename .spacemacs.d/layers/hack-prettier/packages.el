;;; packages.el --- hack-prettier layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Yue Yang <g1eny0ung@gmail.com>
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
;; added to `hack-prettier-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `hack-prettier/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `hack-prettier/pre-init-PACKAGE' and/or
;;   `hack-prettier/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst hack-prettier-packages '(prettier-js web-beautify))

(defun hack-prettier/init-prettier-js ()
  (use-package prettier-js-mode
    :hook (js2-mode web-mode)
    ))

(defun hack-prettier/post-init-web-beautify ()
  (with-eval-after-load 'web-beautify
    (progn
      (spacemacs/set-leader-keys-for-major-mode 'js2-mode
        "=" 'prettier-js)
      (spacemacs/set-leader-keys-for-major-mode 'json-mode
        "=" 'prettier-js)
      (spacemacs/set-leader-keys-for-major-mode 'web-mode
        "=" 'prettier-js)
      (spacemacs/set-leader-keys-for-major-mode 'css-mode
        "=" 'prettier-js))))

;;; packages.el ends here
