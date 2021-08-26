#lang br/quicklang

;; Define func read-syntax with input params `path` and `port`
(define (read-syntax path port)
  
  ;; Define anonymous func
  ;;  - Reads `port` to list of strings `port->lines`
  ;;  - Stores list of strings to `src-lines`
  (define src-lines (port->lines port))

  ;; Returns syntax object describing a module (expression)
  ;;  - Module name is lucy
  ;;  - Uses expander from `br` language (expressions)
  ;;  - Evaluates the expression `42`
  ;; Converted into datum using '
  ;; Converted into syntax object using datum-syntax
  ;; Passed program context #f (placeholder)
  (datum->syntax #f '(module lucy br
                       42)))
;; Makes the read-syntax func publicly available
(provide read-syntax)