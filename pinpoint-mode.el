;;; pinpoint-mode.el --- Major mode for editing pinpoint files.

;; Copyright (C) 2011 Philanecros Heliostein <philanecros@gmail.com>

;; Author: Philanecros Heliostein
;; Keywords: extensions pinpoint

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


;; Local constants and variables
(defgroup pinpoint nil
  "pinpoint mode."
  :prefix "pinpoint-"
  :group 'languages)

; Command line
(defcustom pinpoint-executable "pinpoint"
  "The name of the pinpoint executable."
  :type 'file
  :group 'pinpoint)

; Command line options
(defconst pinpoint-maximized-option "--maximized"
  "Pinpoint maximized option, maximized without window decoration.")
(defconst pinpoint-fullscreen-option "--fullscreen"
  "Pinpoint fullscreen option, fullscreen mode.")
(defconst pinpoint-speakermode-option "--speakermode"
  "Pinpoint speakermode option, speakermode window.")
(defconst pinpoint-rehearse-option "--rehearse"
  "Pinipoint rehearse option, rehearse timings.")

(defconst pinpoint-output-option "--output="
  "Pinpoint output option, output to PDF file.")
(defcustom pinpoint-output-value ""
  "Name of output file."
  :type 'string
  :group 'pinpoint)

(defconst pinpoint-camera-option "--camera="
  "Pinpoint camera option.")
(defcustom pinpoint-camera-value ""
  "Device to use for [camera] background."
  :type 'string
  :group 'pinpoint)

(defconst pinpoint-display-option "--display="
  "Pinpoint display option.")
(defcustom pinpoint-display-value ""
  "X display to use."
  :type 'string
  :group 'pinpoint)

(defconst pinpoint-screen-option "--screen="
  "Pinpoint screen option.")
(defcustom pinpoint-screen-value ""
  "X screen to use."
  :type 'string
  :group 'pinpoint)


;; Keymap
(defvar pinpoint-mode-map nil
  "Keymap for pinpoint mode.")


;; Mode hook
(defvar pinpoint-mode-hook nil
  "Mode hook for pinpoint mode.")


;; Syntax table
(defvar pinpoint-mode-syntax-table nil
  "Syntax table for pinpoint mode.")


;; Functions



;;;###autoload
(define-derived-mode pinpoint-mode fundamental-mode
  "PINPOINT"
  "Major mode for editing pinpoint files."
  
  ;; do things here
)

(provide 'pinpoint-mode)

;;; pinpoint-mode.el ends here
