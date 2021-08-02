;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define str "helloworld")
(define i 5)

(cond
  [(< i (string-length str)) (string-append (substring str 0 i)
                                            "_"
                                            (substring str i))]
  [(>= i (string-length str)) str])