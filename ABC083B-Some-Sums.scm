(define mymain
  (lambda ()
    (let ((n (read)) (a (read)) (b (read)))
      (sub (iota n 1) a b 0)
      )))

;; 各桁の和を計算する
(define mysum
  (lambda (n s) ; sは最初0にする
    (cond ((zero? n) s)
          (else (mysum (quotient n 10) (+ s (modulo n 10)))))
    ))

;; 各桁の和がa以上b以下かを判定する
(define judge?
  (lambda (n a b)
    (if (<= a (mysum n 0) b) #t #f)
    ))

(define sub
  (lambda (lis a b x) ;; xに合計の値
    (cond ((null? lis) x)
          ((judge? (car lis) a b) (sub (cdr lis) a b (+ x (car lis))))
          (else (sub (cdr lis) a b x)))
    ))

(print (mymain))
