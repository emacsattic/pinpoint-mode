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

(defconst pinpoint-mode-version "0.1" "Version of `pinpoint-mode'.")

(defgroup pinpoint nil
  "pinpoint mode."
  :prefix "pinpoint-"
  :group 'languages)


;;;###autoload
(define-derived-mode pinpoint-mode shell-script-mode "pinpoint"
  "Major mode for editing pinpoint files. This is based on shell-script-mode mode."
)

(provide 'pinpoint-mode)

;;; pinpoint-mode.el ends here
