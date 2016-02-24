;;; Each new term in the Fibonacci sequence is generated by adding the previous two terms.
;;; By starting with 1 and 2, the first 10 terms will be:
;;; 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
;;; By considering the terms in the Fibonacci sequence whose values do not exceed four million,
;;; find the sum of the even-valued terms.

(defun fib (n)
  (labels ((fib-aux (n f1 f2)
             (if (zerop n)
                 f1
                 (fib-aux (- n 1) f2 (+ f1 f2)))))
    (fib-aux n 0 1)))

(defun even-fib-sum (max-fib)
  (labels ((lsum (max-fib even-sum n f1 f2)
             (progn
               (format t "max-fib ~A, even-sum ~A, n ~A, f1 ~A, f2 ~A~%" max-fib even-sum n f1 f2)
               (if (> f2 max-fib)
                   even-sum
                   (if (evenp f1)
                       (lsum max-fib (+ even-sum f1) (+ n 1) f2 (+ f1 f2))
                       (lsum max-fib even-sum (+ n 1) f2 (+ f1 f2)))))))
  (lsum max-fib 0 1 1 2)))
