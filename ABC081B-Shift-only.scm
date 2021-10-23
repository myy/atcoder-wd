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
