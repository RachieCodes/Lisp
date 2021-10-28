; PART 1:

(defun reduce(f x v)
    (cond
        ((null x) v)
        (t (apply f (list (car x) (reduce f (cdr x) v))))
    )
)

;function for adding
(defun add (n1 n2)
    (+ n1 n2)
    )
    
;function for multiplying    
(defun multi (n1 n2)
    (* n1 n2))   
    
;function for finding the length of a list    
(defun len (list n1)
    (cond
        ((null list) 0)
        (t (+ 1 (length (cdr list))))
    )
)
 
 ;function for reversing a list
 (defun rev (list n1)
  (do ((list list (rest list))
       (reverse '() (list* (first list) reverse)))
      ((endp list) reverse)))
      

(write(reduce #'add(list 272 480 757 1360 1561)0))
(terpri)
(write(reduce #'multi(list 4 11 25 3673)1))
(terpri)
;(write(reduce #'len(list "csce" "4430" "is" "easy" "using" "lisp")0))
;(write(reduce #'reverse(list "e" "s" "c" "t" "n" "u")""))
(setq x (list "csce" "4430" "is" "easy" "using" "lisp"))
(write(reduce #'len(list x) 0))
(terpri)

(setq y (list "e" "s" "c" "t" "n" "u"))
(write(reduce #'rev(list y)""))
(terpri)

