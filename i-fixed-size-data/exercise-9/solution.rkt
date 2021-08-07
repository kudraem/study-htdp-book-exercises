;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname solution) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define in #true)

(cond
  [(number? in) (abs in)]
  [(string? in) (string-length in)]
  [(image? in) (* (image-width in) (image-height in))]
  [(boolean? in) (if in 10 20)])