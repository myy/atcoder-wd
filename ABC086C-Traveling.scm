(define myread
  (lambda (n)
      (cond ((zero? n) ())
            (else (cons (list (read) (read) (read)) (myread (- n 1)))))
    ))
;; ここで，各時間と座標のリストのリストができる

;; 移動可能かどうかの判定
;; 時間の差dt >= 距離の差dist になっているか
;; dt と dist がどちらも偶数または奇数になっているか
;; リストの先頭と2番目を引数として与える
(define hantei?
  (lambda (lis1 lis2)
    (let ((dt (- (car lis2) (car lis1))) (dist (+ (abs (- (cadr lis2) (cadr lis1))) (abs (- (caddr lis2) (caddr lis1))))))
        (and (>= dt dist) (= (modulo dt 2) (modulo dist 2)))
      )
    ))

(define myfunc
  (lambda (lis)
    (cond ((null? (cdr lis)) 'Yes) ; ここで，lengthでリストの長さを調べていたのがよくなかった！
          ((hantei? (car lis) (cadr lis)) (myfunc (cdr lis)))
          (else 'No)
    )))

(print (myfunc (cons '(0 0 0) (myread (read))))) ; 最初にNを読む

;; lengthだと，リストの最後まで調べることになるから，入力数が多いとそのぶん時間がかかっていたのか
;; (null? (cdr lis))であれば，先頭要素を除いたリストが空かどうか，なのでlengthよりも時間がかからない，と．
