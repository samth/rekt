#lang racket
(provide #%module-begin #%top-interaction)
(define-syntax-rule (#%module-begin . _)
  (#%plain-module-begin ((error-display-handler) "REKT" "REKT")))

(define-syntax-rule (#%top-interaction . _)
  (error "REKT"))

(module reader racket
  (require (prefix-in r: racket))
  (provide read read-syntax)
  (define (read-syntax . args)
    (r:read-syntax 'REKT (open-input-string "(module m rekt)")))
  (define (read . args)
    (r:read (open-input-string "(module m rekt)"))))
