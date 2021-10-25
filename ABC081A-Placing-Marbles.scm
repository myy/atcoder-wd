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

;; 別の書き方

;; 最初に解いたときは，入力をそのまま数で扱って，各桁の数字が0か1かを確認していた
;; 入力を3つに区切って，1の数をかぞえる，のほうがシンプルかな？と思って書いてみた．

(define myfunc
  (lambda (lis n)
    (cond ((null? lis) n)
          ((char=? (car lis) #\1) (myfunc (cdr lis) (+ n 1)))
          (else (myfunc (cdr lis) n))
          )
    ))
(myfunc (string->list (read-line)) 0) ;; (read-line)は入力を1行読み込んで，文字列にして返す
