(defun fuel (fuel)
  (- (floor fuel 3) 2)
  )

(defun parse (file)
  (let ((in (open file :if-does-not-exist nil)))
    (when in
      (loop for line = (read-line in nil)
	    while line sum (fuel (parse-integer line :junk-allowed t)))
      )))

(format t "res is: ~s~%" (parse "input"))
