(define myread
  (lambda ()
    (let ((n (read)))
      (read-a n)
)))
(define read-a
      (lambda (n)
        (cond ((zero? n) ())
              (else (cons (read) (read-a (- n 1)))))))

;; 降順のソートして，ダブリを除いて，リストの長さを取ればいいのでは？
(define mymain
  (lambda (lis) ;; N枚の餅の直径のリスト
    (length (delete-duplicates (reverse (sort lis))))))
(print (mymain (myread)))
