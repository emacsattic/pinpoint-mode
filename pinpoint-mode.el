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

;; Requirement


;; Metadata
(defconst pinpoint-mode-version "0.1"
  "Version of `pinpoint-mode'.")


;; Local constants and variables
(defgroup pinpoint nil
  "pinpoint mode."
  :prefix "pinpoint-"
  :group 'languages)

; UI menu
(defconst pinpoint-mode-menu
  (purecopy '("PINPOINT"
              "---"
              ["About pinpoint-mode" pinpoint-mode-about-pinpoint-mode t])))

; Fonts list
(defvar pinpoint-mode-font-list nil
  "System font name list.")

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
  "Pinpoint rehearse option, rehearse timings.")

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


;; Keywords


;; Keymap
(defvar pinpoint-mode-map nil
  "Keymap for `pinpoint-mode'.")

;; Mode hook
(defvar pinpoint-mode-hook nil
  "Mode hook for `pinpoint-mode'.")

;; Functions
(defun pinpoint-mode-init-font-list ()
  "Get all available font name from system."
  (unless pinpoint-mode-font-list
    (let ((raw-font-list (x-list-fonts "*")))
      (dolist (raw-font-element raw-font-list)
        (string-match "-[^-]*-\\([^-]*\\)" raw-font-element)
        (add-to-list 'pinpoint-mode-font-list
                     (match-string 1 raw-font-element))))))

(defun pinpoint-mode-add-menu ()
  "Add the menu to the menu bar."
  (require 'easymenu)
  (easy-menu-define pinpoint-call-menu pinpoint-mode-map
    "Define menu for `pinpoint-mode'."
    pinpoint-mode-menu)
  (easy-menu-add pinpoint-mode-menu)
  (pinpoint-mode-debug-message "Menu added."))

(defun pinpoint-mode-about-pinpoint-mode (&optional arg)
  "About `pinpoint-mode'."
  (interactive "p")
  (message
   (concat "pinpoint-mode version "
           pinpoint-mode-version
           " by Philanecros Heliostein <philanecros@gmail.com>")))

(defun pinpoint-mode-init-map (&optional arg)
  "Initialize `pinpoint-mode-map'."
  (unless pinpoint-mode-map
    (setq pinpoint-mode-map (make-sparse-keymap))
    (define-key pinpoint-mode-map "\C-c\C-t" 'pinpoint-mode-key-bind-test)))

(defun pinpoint-mode-init-syntax-table (&optional arg)
  "Initialize `pinpoint-mode-syntax-table'."
  (pinpoint-mode-debug-message "Init syntax table."))

(defun pinpoint-mode-debug-message (&optional arg)
  "Print debug message in `pinpoint-mode'."
  (interactive)
  (if arg 
      (message (concat "pinpoint-mode-debug-message: " arg))
    (message "pinpoint-mode-debug-message:")))

(defun pinpoint-mode-key-bind-test ()
  "Key bind test."
  (interactive)
  (pinpoint-mode-debug-message "Called from key map."))

(defun pinpoint-mode-init-mode ()
  "Initialize `pinpoint-mode'."
  (pinpoint-mode-init-syntax-table)
  (pinpoint-mode-init-map)
  (pinpoint-mode-add-menu))

;;;###autoload
(define-derived-mode pinpoint-mode fundamental-mode
  "PINPOINT"
  "Major mode for editing pinpoint files."
  ())

(pinpoint-mode-init-mode)
(add-to-list 'auto-mode-alist '("\\.pin\\'" . pinpoint-mode))

(provide 'pinpoint-mode)

;;; pinpoint-mode.el ends here
