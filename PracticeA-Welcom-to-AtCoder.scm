(define pracA
  (lambda ()
    (let ((a (read)) (b (read)) (c (read)) (s (read)))
      (print (+ a b c) " " s)
      (newline)
)))
(pracA)
