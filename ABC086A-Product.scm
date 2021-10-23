(define pracB
  (lambda ()
    (let ((a (read)) (b (read)))
      (if (even? (* a b)) (print 'Even) (print 'Odd)))))
(pracB)
