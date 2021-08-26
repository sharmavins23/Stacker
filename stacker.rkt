#lang br/quicklang

;; Define func read-syntax with input params `path` and `port`
;; NOTE: Path is not used for the project
(define (read-syntax path port)
  
  ;; Define anonymous func
  ;; - Reads `port` to list of strings `port->lines`
  ;; - Stores list of strings to `src-lines`
  (define src-lines (port->lines port))

  ;; Converts strings into datums
  ;; - format-datums creates a function list of strings and converts via format string
  ;;  (~a marks placement for argument string substitution)
  (define src-datums (format-datums ''(handle ~a) src-lines))

  ;; Inserts new forms into a return as the syntax object
  ;; - Uses a quasiquote (`) operator for string interpolation
  ;; - Uses an unquote-splicing (,@) operator for splicing in merged list
  (define module-datum `(module stacker-mod br
                          ,@src-datums))

  ;; Converts datum to syntax object and returns
  ;; - #f is placeholder context argument
  (datum->syntax #f module-datum))

;; Makes the read-syntax func publicly available
(provide read-syntax)