;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname solution) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))

(define SCALE 2.4)

(define (draw-tree-leaf size r g b) (circle (* size SCALE) "solid" (color r g b 170)))

(define leaf-type-1 (draw-tree-leaf 15 0 201 87))
(define leaf-type-2 (draw-tree-leaf 15 61 145 64))
(define leaf-type-3 (draw-tree-leaf 15 107 142 35))
(define leaf-type-4 (draw-tree-leaf 15 46 139 87))
(define leaf-type-5 (draw-tree-leaf 15 34 139 34))

(define crown-part (overlay/offset (overlay/offset (overlay/offset leaf-type-2
                                                                   (* 15 SCALE) (* 7.5 SCALE)
                                                                   leaf-type-3)
                                                   (* -15 SCALE) (* 7.5 SCALE)
                                                   (overlay/offset leaf-type-1
                                                                   (* 15 SCALE) (* 7.5 SCALE)
                                                                   leaf-type-5))
                                   (* 15 SCALE) (* 15 SCALE)
                                   (overlay/offset (overlay/offset leaf-type-4
                                                                   (* 15 SCALE) (* 7.5 SCALE)
                                                                   leaf-type-3)
                                                   (* -15 SCALE) (* 7.5 SCALE)
                                                   (overlay/offset leaf-type-4
                                                                   (* 15 SCALE) (* 7.5 SCALE)
                                                                   leaf-type-5))))

(define crown (overlay/offset crown-part (* -5 SCALE) (* 13 SCALE) crown-part))

(define (draw-tree-bark width height r g b) (rectangle (* width SCALE) (* height SCALE) "solid" (color r g b 255)))

(define bark-type-1 (draw-tree-bark 15 60 94 38 18))
(define bark-type-2 (draw-tree-bark 12 60 128 42 42))
(define bark-type-3 (draw-tree-bark 7 60 139 69 19))
(define bark-type-4 (draw-tree-bark 3 60 210 105 30))

(define trunk (overlay (overlay bark-type-4 bark-type-3)
                       (overlay bark-type-2 bark-type-1)))

(define tree (overlay/offset crown (* 0 SCALE) (* 40 SCALE) trunk))
tree