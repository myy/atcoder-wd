(define sub
  (lambda (n i) ;; nには0以外の数値が入っている
    (cond ((zero? n) (print i))
          ((= (modulo n 10) 1) (sub (quotient n 10) (+ i 1)))
           (else (sub (quotient n 10) i)))))

(define pracC
  (lambda ()
    (let ((n (read)))
      (cond ((zero? n) (print 0))
            (else (sub n 0)))
      )))
(pracC)
