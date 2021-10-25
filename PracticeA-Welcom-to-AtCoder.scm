(define pracA
  (lambda ()
    (let ((a (read)) (b (read)) (c (read)) (s (read)))
      (print (+ a b c) " " s)
      (newline)
)))
(pracA)

;; 手続きを作ることにこだわらないなら，こういう書き方もあるか
;; 入力は4つとわかっているので，決め打ちで
(define a (read))
(define b (read))
(define c (read))
(define s (read))
(print (+ a b c) " " s)
