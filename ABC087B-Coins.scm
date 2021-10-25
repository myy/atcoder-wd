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

;; 別の書き方
(define a (read))
(define b (read))
(define c (read))
(define x (read))

(let ((count 0))
    (dotimes (i (+ a 1))
             (dotimes (j (+ b 1)) 
                      (dotimes (k (+ c 1))
                              (if (= (+ (* 500 i) (* 100 j) (* 50 k)) x) (set! count (+ count 1)))
                              )))
  (print count))
;; 多重ループで総当りで解けそうなら，dotimes使うほうがぜんぜんいいかも
