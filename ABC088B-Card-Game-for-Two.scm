;; Nの値だけ読み込む
(define myread
  (lambda ()
    (let ((n (read)))
      (read-a n)
)))

;; A_iを読み込み，リストにする
;; 1行目の値を使って，その分だけreadを回す
(define read-a
      (lambda (n)
        (cond ((zero? n) ())
              (else (cons (read) (read-a (- n 1)))))))

;; カードを分けたい
;; 0からはじめて，偶数番目をAlice，奇数番目をBobでいいかなあ
(define divcard
  (lambda (lis i alice bob)
    (cond ((null? lis) (list alice bob))
          ((even? i) (divcard (cdr lis) (+ i 1) (cons (car lis) alice) bob))
          (else (divcard (cdr lis) (+ i 1) alice (cons (car lis) bob))
    )
    )))

(define myfunc
  (lambda ()
    (let* ((lis (divcard (reverse (sort (myread))) 0 () ()))
           (a (car lis)) (b (cadr lis)))
      (- (fold + 0 a) (fold + 0 b)))))
(print (myfunc))
