#lang racket

(require ffi/unsafe
         ffi/unsafe/define)

(require rackunit)

(define-ffi-definer define-rac (ffi-lib "librac"))

(define-rac hello (_fun -> _string))
(define-rac plus (_fun _int8 _int8 -> _int8))

;; using struct
(define-cstruct _ABC ([a _int]
                      [b _int]
                      [c _int]))

(define-rac sum_ABC (_fun _ABC-pointer -> _int))

(test-begin
 (check-equal? (hello) "Hello, World!")
 (check-equal? (plus 1 3) 4)
 (check-equal? (sum_ABC (make-ABC 1 2 3)) 6)
)




