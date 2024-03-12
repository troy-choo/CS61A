(define (ascending? lst) 
    'YOUR-CODE-HERE
    (if (null? lst)
        #t
        (if (null? (cdr lst))
            #t
            (if (<= 
                    (car lst) 
                    (car (cdr lst))
                )
                (ascending? (cdr lst))
                #f
            )
        )
    )
)

(define (my-filter pred s) 
    'YOUR-CODE-HERE
    (if (null? s)
        s
        (if (pred (car s))
            (cons (car s)
                (my-filter pred (cdr s))
            )
            (my-filter pred (cdr s))
        )
    )
    
)

(define (interleave lst1 lst2) 
'YOUR-CODE-HERE
(if (null? lst1)
        lst2
        (cons (car lst1)
            (interleave lst2 (cdr lst1))
        )
    )
)

(define (no-repeats lst) 
'YOUR-CODE-HERE
(define (member item items)
        (if (null? items)
            #f
            (if (equal? item (car items))
                #t
                (member item (cdr items))
            )
        )
    )
    
    (if (null? lst)
        lst
        (if (member (car lst) (cdr lst))
            (no-repeats (cdr lst))
            (cons (car lst)
                (no-repeats (cdr lst))
            )
        )
    )
)

