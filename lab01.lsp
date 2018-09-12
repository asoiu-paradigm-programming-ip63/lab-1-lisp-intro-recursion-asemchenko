; task 1
(print
	( 
		(lambda (list1 list2 list3)
			(LIST
				(CAR list1)
				(CAR list2)
				(CAR list3)
			)
		)
	'(T HJ JH K L (K)) '(6 7 5 4 (8 9 0)(4 6)) '(K 2 T F G H)
	)
)
; task 2
(defun mynth (index l)
	(IF (EQUAL index '0)
		(CAR l)
		(mynth (- index '1) (CDR l))
	)
)
(defun lcomp (list1 list2 list3)
	(LIST  (mynth 1 list1) (mynth 5 list2) (mynth 2 list3))
)
(print (lcomp '(T HJ JH K L (K)) '(6 7 5 4 (8 9 0)(4 6)) '(K 2 T F G H)))
; task 3
(defun smfunc (lst)
	(if (= (mod (EVAL lst) 2) '0)
		(> (EVAL lst) 0)
		lst
	)
)
(print (smfunc '(- 1 3)))
