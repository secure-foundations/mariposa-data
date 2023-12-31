(set-option :auto-config false)
(set-option :produce-unsat-cores false)
(set-option :smt.mbqi.max_iterations 10000000)
(set-option :smt.relevancy 0)
(declare-fun c0 () Bool)
(declare-fun c1 () Bool)
(define-fun e2 () Bool (and c0 c1))
(define-fun e3 () Bool (not e2))
(define-fun e4 () Bool (not c1))
(declare-fun c5 () (_ BitVec 64))
(define-fun e6 () (_ BitVec 64) (_ bv1024 64))
(define-fun e7 () Bool (bvult c5 e6))
(define-fun e8 () (_ BitVec 64) (_ bv2 64))
(declare-fun c9 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e10 () (_ BitVec 64) (c9 c5))
(define-fun e11 () Bool (= e8 e10))
(define-fun e12 () Bool (and e7 e11))
(define-fun e13 () (_ BitVec 64) (_ bv1 64))
(declare-fun c14 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun c15 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e16 () (_ BitVec 64) (c15 c5))
(define-fun e17 () (_ BitVec 64) (c14 e16 e8))
(define-fun e18 () Bool (= e13 e17))
(define-fun e19 () (_ BitVec 64) (_ bv0 64))
(define-fun e20 () (_ BitVec 64) (c14 c5 e19))
(define-fun e21 () Bool (= e19 e20))
(define-fun e22 () Bool (and e4 e12 e18 e21))
(define-fun e23 () Bool (not e12))
(define-fun e24 () Bool (not e18))
(define-fun e25 () Bool (not e21))
(define-fun e26 () Bool (and e18 e25))
(define-fun e27 () Bool (or e24 e26))
(define-fun e28 () Bool (and e12 e27))
(define-fun e29 () Bool (or e23 e28))
(define-fun e30 () Bool (and e4 e29))
(define-fun e31 () Bool (or c1 e30))
(define-fun e32 () Bool (or e22 e31))
(define-fun e33 () Bool (or e32 e3))
(define-fun e34 () Bool (not e22))
(define-fun e35 () Bool (or e34 e3))
(define-fun e36 () Bool (and e33 e35))
(define-fun e37 () Bool (or e3 e36))
(define-fun e38 () Bool (not e37))
(assert e38)
(check-sat)
