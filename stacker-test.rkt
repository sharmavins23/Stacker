;; Runs our postfix calculation stack
;; Current expression:
;; * (26 / 5) + 336 * (17 - 7)
;; Expected outcome:
;; * 3365.2 == 16826/5
#lang reader "stacker.rkt"
26
5
/
17
7
-
336
*
+