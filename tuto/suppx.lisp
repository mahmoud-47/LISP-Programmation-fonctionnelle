(defun suppx (l x)
    (cond
        (
            (atom l)
            l
        )
        (
            (eq (car l) x)
            (suppx (cdr l) x)
        )
        (
            t
            (cons (car l) (suppx (cdr l) x))
        )
    )
)

(format t "~a~%" (suppx (list 1 2 3 4 3 5) 3))