;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Programs are Function Plus Variable Definitions|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Section 3

;Programs are Function Plus Variable Definitions

;3.1 Composing Functions

(define (profit0 price0)
  (- (* price0 (- 870 (* 150 price0)))
     (+ 180 (* 0.04 (- 870 (* 150 price0))))))

(define (profit1 p)
  (- (* p 876) (* 150 p p) 214.8))

; when the price is 2.92, the profit is hignest and equals to 1064.16.

(define (profit price)
  (- (revenue price)
     (cost price)))
(define (revenue price)
  (* (attendees price) price))

(define (cost price)
  (* 1.5 (attendees price)))
(define (attendees price)
  (+ 120
     (* (/ -15 .1) (- price 5))))

;calculate the output of the functions

(profit0 2.92)
(profit1 2.92)
(profit 2.92)

;Guideline on Auxiliary Functions
;Formulate auxiliary funciton definitions for every dependency between quantities mentioned in the problem statement
;or discovered with example calcutions.

;Exercise 3.1.3
(profit 3)
(profit 4)
(profit 5)

;3.2 Variable Definitons

;Guideline on Variable Definitions
;Give names to frequently used constants and use the names instead of the constants in programs.

;3.3 Finger Exercise on Composing Functions
; 1 inch = 2.54 cm
; 1 foot = 12 inch
; 1 yard = 3 foot
; 1 rod = 11/2yard
; 1 furlong = 40 rod
; 1 mile = 8 furlong
(define (inches->cm in)
  (* 2.54 in))
(define (feet->inches ft)
  (* 12 ft))
(define (yards->feet yd)
  (* 3 yd))
(define (rods->yards rd)
  (* 11/2 rd))
(define (furlongs->rods fl)
  (* 40 fl))
(define (miles->furlongs ml)
  (* 8 ml))
;need to define constants,but I did not, it's not good.
(define (feet->cm ft)
  (* 12 2.54 ft))
(define (yard->cm yd)
  (* 3 12 2.54 yd))
(define (rods->inches rd)
  (* 11/2 3 12 rd))
(define (miles-> feet ml)
  (* 8 40 11/2 3 ml))
;--the solution of the above is not good, there are a good way to define those functions.



        