;; Nの値だけ読み込む
(define pracD
  (lambda ()
    (let ((n (read)))
      (read-a n)
)))

;; A_iを読み込み，リストにする
(define read-a
      (lambda (n)
        (cond ((zero? n) ())
              (else (cons (read) (read-a (- n 1)))))))

;; リストに奇数が含まれているかを判定する
(define inodd?
  (lambda (lis)
    (cond ((null? lis) #f)
          ((odd? (car lis)) #t)
          (else (inodd? (cdr lis))))))

;; 
(define mydiv
  (lambda (lis n)
    (cond ((inodd? lis) n)
          (else (mydiv (map (lambda (x) (quotient x 2)) lis) (+ n 1))))))


(print (mydiv (pracD) 0))


;; 別の解き方
(define myread
  (lambda (n) ;; 読み込みたいものの数．最初に入力される場合は引数を(read)にすればよろし
    (cond ((zero? n) ())
          (else (cons (read) (myread (- n 1)))))
    ))
(define myfunc
  (lambda (lis n)
        (if (= (length lis) (length (filter even? lis))) ;; もとのリストの長さと，偶数だけを取り出したリストの長さを比較する
            (myfunc (map (lambda (x) (quotient x 2)) lis) (+ n 1))
            n
    )))
(print (myfunc (myread (read)) 0))
