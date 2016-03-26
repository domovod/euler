;;; If we list all the natural numbers below 10 that are multiples of 3 or 5,
;;; we get 3, 5, 6 and 9. The sum of these multiples is 23.
;;;
;;; Find the sum of all the multiples of 3 or 5 below 1000.

(defun mulptiple-sum (num)
  (defun mult-sum (res i)
    (if (>= i num)
        res
        (if (or (eql 0 (mod i 3)) (eql 0 (mod i 5)))
            (mult-sum (+ res i) (+ i 1))
            (mult-sum res (+ i 1)))))
  (mult-sum 0 1))
