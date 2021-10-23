(use util.combinations)

;; 標準入力からの読み込み
(define myread
  (lambda ()
    (let ((n (read)) (y (read))) ;; nはお札の枚数，yは合計金額
      (mysum n y (cartesian-product `(,(iota (+ n 1)) ,(iota (+ n 1)))))
      )))
(define mysum
  (lambda (n y lis) ;; 直積のリスト
    (cond ((null? lis) (print "-1 -1 -1"))
          (else 
                (let ((b (caar lis)) (c (cadar lis)))
                  (if (< n (+ b c))
                      (mysum n y (cdr lis))
                      (if (= y (+ (* (- n (+ b c)) 10000) (* b 5000) (* c 1000))) (print (- n (+ b c)) " " b " " c) (mysum n y (cdr lis)))))))))
(myread)
