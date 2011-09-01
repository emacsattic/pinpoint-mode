;;; pinpoint-mode.el --- Major mode for editing pinpoint files.

;; Copyright (C) 2011 Philanecros Heliostein <philanecros@gmail.com>

;; Author: Philanecros Heliostein
;; Keywords: extensions

;;; License:

;; This program is free software. It comes without any warranty, to
;; the extent permitted by applicable law. You can redistribute it
;; and/or modify it under the terms of the Do What The Fuck You Want
;; To Public License, Version 2, as published by Sam Hocevar. See
;; http://sam.zoy.org/wtfpl/COPYING for more details.

;;; Commentary:

;;; TODO:

;;; Usage:

;;; Changelog:

;;; Code:

(defconst pinpoint-mode-version "0.1"
  "Version of `pinpoint-mode'.")

;; Local variables
(defgroup pinpoint nil
  "Local variables for pinpoint mode."
  :prefix "pinpoint-"
  :group 'languages)

;; Keymap
(defvar pinpoint-mode-map nil
  "Keymap for pinpoint mode.")

;; Mode hook
(defvar pinpoint-mode-hook nil
  "Mode hook for pinpoint mode.")

;; Sytax table
(defvar pinpoint-mode-syntax-table nil
  "Syntax table for pinpoint mode.")


;;;###autoload
(define-derived-mode pinpoint-mode fundamental-mode
  "PINPOINT"
  "Major mode for editing pinpoint files."
  
  ;; do things here
)

(provide 'pinpoint-mode)

;;; pinpoint-mode.el ends here
