(use util.combinations)

(define myread
  (lambda ()
    (let ((a (read)) (b (read)) (c (read)) (x (read)))
        ;; a, b, cについて，iotaでリストを作る
      ;; 作った3つのリストから，直積集合のリストを作る
      (judge (cartesian-product `(,(iota (+ a 1)) ,(iota (+ b 1)) ,(iota (+ c 1)))) x 0)
      )))

(define judge
  (lambda (lis x n) ; nが組み合わせの数のカウンタ
    (cond ((null? lis) n)
          ((= (+ (* 500 (car (car lis))) (* 100 (cadr (car lis))) (* 50 (caddr (car lis)))) x) (judge (cdr lis) x (+ n 1)))
          (else (judge (cdr lis) x n)))
    ))

(print (myread))
