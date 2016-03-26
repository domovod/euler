;;; 005/problem.lisp

;;; Problem URL: https://projecteuler.net/problem=5
;;; 2520 is the smallest number that can be divided by each of the numbers from 1
;;; to 10 without any remainder.
;;; What is the smallest positive number that is evenly divisible by all of the
;;; numbers from 1 to 20?

(defun fact (n acc)
  (if (eql 0 n)
      acc
      (fact (- n 1) (* n acc))))

(defun factorial (n)
  (fact n 1))

(defun divisiblep (a b)
  (if (eql 0 (mod a b))
      T
      nil))

(defun dividerp(a b)
  (if (eql b 1)
      T
      (if (divisiblep a b)
          (dividerp a (- b 1))
          nil)))

(defun find-div (acc val n)
  (if (<= val acc)
      (if (dividerp val n)
          val
          (find-div acc (+ val n) n))))

(defun find-divisible (n)
  (find-div (factorial n) n n))
