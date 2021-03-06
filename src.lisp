(in-package #:cl-user)
(defpackage #:sswt (:use #:cl))
(in-package #:sswt)

(defun calc (n &optional target)
  (let (collect)
    (loop for j from 0 to 6
       for tr1 = (norm2 (+ n (* j 7)))
       do (let* ((tr2 (+ tr1 24))
		 (tr3 (+ tr1 42))
		 (tr4 (norm (+ tr1 67)))
		 (tr5 (norm (+ tr1 96)))
		 (result (list tr1 tr2 tr3 tr4 tr5)))
	    (when (and target (member target result))
	      (return-from calc (+ j 1)))
	    (push result collect)))
    (reverse collect)))

(defun back-calc (tr1 target)
  (loop for n from tr1 to 100
     for result = (calc n target)
     do (when (integerp result)
	  (return-from back-calc
	    (list (- n tr1) result)))))

(defun norm (n)
  (if (>= n 100)
      (- n 100)
      n))

(defun norm2 (n)
  (if (>= n 50)
      (- n 50)
      n))
