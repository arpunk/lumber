#|
@doc
  lumber public API
@end
|#
(defmodule lumber
  (export (log 1) (log 2) (log 3))

  ;; Log levels
  (export (debug 1) (debug 2)
          (info 1) (info 2)
          (notice 1) (notice 2)
          (warning 1) (warning 2)
          (error 1) (error 2)
          (critical 1) (critical 2)
          (alert 1) (alert 2)
          (emergency 1) (emergency 2))

  ;; Misc wrappers
  (export (set-level 1) (set-level 2) (set-level 3)
          (status 0)
          (posix-error 1)))

;;; API functions

(defun log (msg)
  (log 'info msg))

(defun log (level msg)
  (log level msg '()))

(defun log (level msg args)
  (lager:log level '() msg args))

;; Log levels

(defun debug (msg)
  (log 'debug msg '()))
(defun debug (msg args)
  (log 'debug msg args))

(defun info (msg)
  (log 'info msg))
(defun info (msg args)
  (log 'info msg args))

(defun notice (msg)
  (log 'notice msg))
(defun notice (msg args)
  (log 'notice msg args))

(defun warning (msg)
  (log 'warning msg))
(defun warning (msg args)
  (log 'warning msg args))

(defun error (msg)
  (log 'error msg))
(defun error (msg args)
  (log 'error msg args))

(defun critical (msg)
  (log 'critical msg))
(defun critical (msg args)
  (log 'critical msg args))

(defun alert (msg)
  (log 'alert msg))
(defun alert (msg args)
  (log 'alert msg args))

(defun emergency (msg)
  (log 'emergency msg))
(defun emergency (msg args)
  (log 'emergency msg args))

;; Lager wrapper funcs

(defun set-level (log-level)
  (set-level 'lager_console_backend log-level))

(defun set-level (lager-backend log-level)
  (lager:set_loglevel lager-backend log-level))

(defun set-level (lager-backend file-name log-level)
  (lager:set_loglevel lager-backend file-name log-level))

(defun status ()
  (lager:status))

(defun posix-error (error)
  (lager:posix_error error))