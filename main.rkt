#lang racket
(provide #%module-begin #%top-interaction)
(define-syntax-rule (#%module-begin . _)
  (#%plain-module-begin ((error-display-handler) "REKT" 'REKT)))

(define-syntax-rule (#%top-interaction . _)
  ((error-display-handler) "REKT" 'REKT))

(module reader syntax/module-reader
  rekt)