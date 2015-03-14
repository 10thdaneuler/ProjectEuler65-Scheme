(define (cont-fract lst)
  (if (null? (cdr lst))
      (car lst)
      (+ (car lst) (/ 1 (cont-fract (cdr lst))))))

(define (make-list k stop)
  (if (<= stop 0)
      '()
      (append (list 1 k 1) (make-list (+ k 2) (- stop 3)))))

(define (sum-of-digits n)
  (if (= n 0)
      0
      (+ (modulo n 10)
         (sum-of-digits (/ (- n (modulo n 10)) 10)))))

(sum-of-digits (numerator (cont-fract (append '(2) (make-list 2 99)))))
