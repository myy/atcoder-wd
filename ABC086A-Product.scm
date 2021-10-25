(define pracB
  (lambda ()
    (let ((a (read)) (b (read)))
      (if (even? (* a b)) (print 'Even) (print 'Odd)))))
(pracB)

;; 別の書き方
(define a (read))
(define b (read))
(print (if (odd? (* a b)) 'Odd 'Even ))
