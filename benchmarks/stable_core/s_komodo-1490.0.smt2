(set-option :auto-config false)
(set-option :produce-unsat-cores false)
(set-option :smt.mbqi.max_iterations 10000000)
(set-option :smt.relevancy 0)
(declare-fun c0 () Bool)
(declare-fun c1 () Bool)
(define-fun e2 () Bool (not c1))
(declare-fun c3 () Bool)
(define-fun e4 () Bool (not c3))
(declare-fun c5 () Bool)
(define-fun e6 () Bool (not c5))
(define-fun e7 () Bool (and c0 e2 e4 e6))
(declare-fun c8 () Bool)
(define-fun e9 () Bool (and e7 c8))
(define-fun e10 () Bool (not e9))
(declare-fun c11 () (_ BitVec 64))
(define-fun e12 () (_ BitVec 64) (_ bv1024 64))
(define-fun e13 () Bool (bvult c11 e12))
(define-fun e14 () (_ BitVec 64) (_ bv1 64))
(declare-fun c15 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e16 () (_ BitVec 64) (c15 c11))
(define-fun e17 () Bool (= e14 e16))
(define-fun e18 () Bool (and e13 e17))
(declare-fun c19 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e20 () (_ BitVec 64) (_ bv2 64))
(define-fun e21 () (_ BitVec 64) (c19 c11 e20))
(define-fun e22 () Bool (= e14 e21))
(define-fun e23 () Bool (and e18 e22))
(declare-fun c24 () (_ BitVec 64))
(define-fun e25 () (_ BitVec 64) (_ bv512 64))
(define-fun e26 () Bool (bvult c24 e25))
(declare-fun c27 () (_ BitVec 64))
(define-fun e28 () Bool (bvult c27 e12))
(define-fun e29 () (_ BitVec 64) (_ bv6 64))
(define-fun e30 () (_ BitVec 64) (c15 c27))
(define-fun e31 () Bool (= e29 e30))
(define-fun e32 () Bool (and e28 e31))
(declare-fun c33 () (_ BitVec 64))
(declare-fun c34 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e35 () (_ BitVec 64) (c34 c27))
(define-fun e36 () Bool (= c33 e35))
(define-fun e37 () Bool (and c8 e26 e32 e36))
(define-fun e38 () Bool (= c27 c11))
(define-fun e39 () Bool (= e20 c24))
(define-fun e40 () Bool (and e38 e39))
(declare-fun c41 () (_ BitVec 64))
(define-fun e42 () (_ BitVec 64) (ite e40 c41 e21))
(define-fun e43 () (_ BitVec 64) (ite e37 e42 e21))
(define-fun e44 () Bool (= e14 e43))
(define-fun e45 () Bool (and e18 e44))
(define-fun e46 () Bool (and (=> e23 e45) (=> e45 e23)))
(define-fun e49 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (c19 c47 c48))
(define-fun e50 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (_ bv512 64))
(define-fun e51 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (bvult c24 (e50 c47 c48)))
(define-fun e52 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e53 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (bvult c27 (e52 c47 c48)))
(define-fun e54 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (_ bv6 64))
(define-fun e55 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (c15 c27))
(define-fun e56 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (= (e54 c47 c48) (e55 c47 c48)))
(define-fun e57 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (and (e53 c47 c48) (e56 c47 c48)))
(define-fun e58 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (c34 c27))
(define-fun e59 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (= c33 (e58 c47 c48)))
(define-fun e60 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (and c8 (e51 c47 c48) (e57 c47 c48) (e59 c47 c48)))
(define-fun e61 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (= c27 c47))
(define-fun e62 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (= c24 c48))
(define-fun e63 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (and (e61 c47 c48) (e62 c47 c48)))
(define-fun e64 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (ite (e63 c47 c48) c41 (e49 c47 c48)))
(define-fun e65 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (ite (e60 c47 c48) (e64 c47 c48) (e49 c47 c48)))
(define-fun e66 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (= (e49 c47 c48) (e65 c47 c48)))
(define-fun e67 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (bvult c47 (e52 c47 c48)))
(define-fun e68 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e69 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (c15 c47))
(define-fun e70 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (= (e68 c47 c48) (e69 c47 c48)))
(define-fun e71 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (and (e67 c47 c48) (e70 c47 c48)))
(define-fun e72 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (not (e71 c47 c48)))
(define-fun e73 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (_ BitVec 64) (c34 c47))
(define-fun e74 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (= c11 (e73 c47 c48)))
(define-fun e75 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (and (e67 c47 c48) (e72 c47 c48) (e74 c47 c48)))
(define-fun e76 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (bvult c48 (e50 c47 c48)))
(define-fun e77 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (and (e75 c47 c48) (e76 c47 c48)))
(define-fun e78 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (not (e77 c47 c48)))
(define-fun e79 ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) Bool (or (e66 c47 c48) (e78 c47 c48)))
(define-fun e80 () Bool (forall ((c47 (_ BitVec 64)) (c48 (_ BitVec 64))) (e79 c47 c48)))
(define-fun e81 () Bool (not e23))
(define-fun e82 () Bool (or e80 e81))
(define-fun e83 () Bool (and e46 e82))
(define-fun e85 ((c84 (_ BitVec 64))) (_ BitVec 64) (c34 c84))
(define-fun e86 ((c84 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e87 ((c84 (_ BitVec 64))) Bool (bvult (e85 c84) (e86 c84)))
(define-fun e88 ((c84 (_ BitVec 64))) (_ BitVec 64) (_ bv1 64))
(define-fun e89 ((c84 (_ BitVec 64))) (_ BitVec 64) (c15 (e85 c84)))
(define-fun e90 ((c84 (_ BitVec 64))) Bool (= (e88 c84) (e89 c84)))
(define-fun e91 ((c84 (_ BitVec 64))) Bool (and (e87 c84) (e90 c84)))
(define-fun e92 ((c84 (_ BitVec 64))) Bool (bvult c84 (e86 c84)))
(define-fun e93 ((c84 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e94 ((c84 (_ BitVec 64))) (_ BitVec 64) (c15 c84))
(define-fun e95 ((c84 (_ BitVec 64))) Bool (= (e93 c84) (e94 c84)))
(define-fun e96 ((c84 (_ BitVec 64))) Bool (not (e95 c84)))
(define-fun e97 ((c84 (_ BitVec 64))) Bool (and (e92 c84) (e96 c84)))
(define-fun e98 ((c84 (_ BitVec 64))) Bool (not (e97 c84)))
(define-fun e99 ((c84 (_ BitVec 64))) Bool (or (e91 c84) (e98 c84)))
(define-fun e100 () Bool (forall ((c84 (_ BitVec 64))) (e99 c84)))
(define-fun e102 ((c101 (_ BitVec 64))) (_ BitVec 64) (c34 c101))
(define-fun e103 ((c101 (_ BitVec 64))) Bool (= c101 (e102 c101)))
(define-fun e104 ((c101 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e105 ((c101 (_ BitVec 64))) Bool (bvult c101 (e104 c101)))
(define-fun e106 ((c101 (_ BitVec 64))) (_ BitVec 64) (_ bv1 64))
(define-fun e107 ((c101 (_ BitVec 64))) (_ BitVec 64) (c15 c101))
(define-fun e108 ((c101 (_ BitVec 64))) Bool (= (e106 c101) (e107 c101)))
(define-fun e109 ((c101 (_ BitVec 64))) Bool (and (e105 c101) (e108 c101)))
(define-fun e110 ((c101 (_ BitVec 64))) Bool (not (e109 c101)))
(define-fun e111 ((c101 (_ BitVec 64))) Bool (or (e103 c101) (e110 c101)))
(define-fun e112 () Bool (forall ((c101 (_ BitVec 64))) (e111 c101)))
(define-fun e113 ((c101 (_ BitVec 64))) Bool (bvult (e102 c101) (e104 c101)))
(define-fun e114 ((c101 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e115 ((c101 (_ BitVec 64))) Bool (= (e114 c101) (e107 c101)))
(define-fun e116 ((c101 (_ BitVec 64))) Bool (not (e115 c101)))
(define-fun e117 ((c101 (_ BitVec 64))) Bool (and (e105 c101) (e116 c101)))
(define-fun e118 ((c101 (_ BitVec 64))) Bool (not (e117 c101)))
(define-fun e119 ((c101 (_ BitVec 64))) Bool (or (e113 c101) (e118 c101)))
(define-fun e120 () Bool (forall ((c101 (_ BitVec 64))) (e119 c101)))
(declare-fun c121 () (_ BitVec 64))
(define-fun e122 () Bool (bvult c121 e12))
(define-fun e123 () Bool (not c8))
(define-fun e124 () (_ BitVec 64) (c15 c121))
(define-fun e125 () Bool (= e20 e124))
(define-fun e126 () Bool (and e122 e125))
(define-fun e127 () (_ BitVec 64) (c34 c121))
(define-fun e128 () Bool (= c33 e127))
(define-fun e129 () (_ BitVec 64) (c19 c33 e20))
(define-fun e130 () Bool (= e14 e129))
(define-fun e131 () Bool (and e126 e128 e130))
(define-fun e132 () Bool (or e123 e131))
(define-fun e133 () Bool (and e100 e112 e120 e122 e132))
(define-fun e134 () Bool (= c11 c33))
(define-fun e135 () Bool (not e134))
(define-fun e136 () Bool (and e133 e135))
(define-fun e137 () Bool (not e136))
(define-fun e138 () Bool (or e83 e137))
(define-fun e139 () Bool (or e10 e138))
(define-fun e140 () Bool (not e139))
(assert e140)
(check-sat)
