(set-option :auto-config false)
(set-option :produce-unsat-cores false)
(set-option :smt.mbqi.max_iterations 10000000)
(set-option :smt.relevancy 0)
(declare-fun c1 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e2 ((c0 (_ BitVec 64))) (_ BitVec 64) (c1 c0))
(define-fun e3 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e4 ((c0 (_ BitVec 64))) Bool (bvult (e2 c0) (e3 c0)))
(define-fun e5 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv1 64))
(declare-fun c6 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e7 ((c0 (_ BitVec 64))) (_ BitVec 64) (c6 (e2 c0)))
(define-fun e8 ((c0 (_ BitVec 64))) Bool (= (e5 c0) (e7 c0)))
(define-fun e9 ((c0 (_ BitVec 64))) Bool (and (e4 c0) (e8 c0)))
(define-fun e10 ((c0 (_ BitVec 64))) Bool (bvult c0 (e3 c0)))
(define-fun e11 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e12 ((c0 (_ BitVec 64))) (_ BitVec 64) (c6 c0))
(define-fun e13 ((c0 (_ BitVec 64))) Bool (= (e11 c0) (e12 c0)))
(define-fun e14 ((c0 (_ BitVec 64))) Bool (not (e13 c0)))
(define-fun e15 ((c0 (_ BitVec 64))) Bool (and (e10 c0) (e14 c0)))
(define-fun e16 ((c0 (_ BitVec 64))) Bool (not (e15 c0)))
(define-fun e17 ((c0 (_ BitVec 64))) Bool (or (e9 c0) (e16 c0)))
(define-fun e18 () Bool (forall ((c0 (_ BitVec 64))) (e17 c0)))
(define-fun e20 ((c19 (_ BitVec 64))) (_ BitVec 64) (c1 c19))
(define-fun e21 ((c19 (_ BitVec 64))) Bool (= c19 (e20 c19)))
(define-fun e22 ((c19 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e23 ((c19 (_ BitVec 64))) Bool (bvult c19 (e22 c19)))
(define-fun e24 ((c19 (_ BitVec 64))) (_ BitVec 64) (_ bv1 64))
(define-fun e25 ((c19 (_ BitVec 64))) (_ BitVec 64) (c6 c19))
(define-fun e26 ((c19 (_ BitVec 64))) Bool (= (e24 c19) (e25 c19)))
(define-fun e27 ((c19 (_ BitVec 64))) Bool (and (e23 c19) (e26 c19)))
(define-fun e28 ((c19 (_ BitVec 64))) Bool (not (e27 c19)))
(define-fun e29 ((c19 (_ BitVec 64))) Bool (or (e21 c19) (e28 c19)))
(define-fun e30 () Bool (forall ((c19 (_ BitVec 64))) (e29 c19)))
(define-fun e31 ((c19 (_ BitVec 64))) Bool (bvult (e20 c19) (e22 c19)))
(define-fun e32 ((c19 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e33 ((c19 (_ BitVec 64))) Bool (= (e32 c19) (e25 c19)))
(define-fun e34 ((c19 (_ BitVec 64))) Bool (not (e33 c19)))
(define-fun e35 ((c19 (_ BitVec 64))) Bool (and (e23 c19) (e34 c19)))
(define-fun e36 ((c19 (_ BitVec 64))) Bool (not (e35 c19)))
(define-fun e37 ((c19 (_ BitVec 64))) Bool (or (e31 c19) (e36 c19)))
(define-fun e38 () Bool (forall ((c19 (_ BitVec 64))) (e37 c19)))
(declare-fun c39 () (_ BitVec 64))
(define-fun e40 () (_ BitVec 64) (_ bv1024 64))
(define-fun e41 () Bool (bvult c39 e40))
(define-fun e42 () (_ BitVec 64) (_ bv2 64))
(define-fun e43 () (_ BitVec 64) (c6 c39))
(define-fun e44 () Bool (= e42 e43))
(define-fun e45 () Bool (and e41 e44))
(declare-fun c46 () Bool)
(define-fun e47 () Bool (not c46))
(define-fun e48 () Bool (or e45 e47))
(declare-fun c49 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e50 ((c19 (_ BitVec 64))) (_ BitVec 64) (c49 c19))
(define-fun e51 ((c19 (_ BitVec 64))) Bool (= (e32 c19) (e50 c19)))
(define-fun e52 ((c19 (_ BitVec 64))) Bool (and (e23 c19) (e28 c19)))
(define-fun e53 ((c19 (_ BitVec 64))) Bool (not (e52 c19)))
(define-fun e54 ((c19 (_ BitVec 64))) Bool (or (e51 c19) (e53 c19)))
(define-fun e55 () Bool (forall ((c19 (_ BitVec 64))) (e54 c19)))
(declare-fun c56 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e57 ((c19 (_ BitVec 64))) (_ BitVec 64) (c56 c19 (e24 c19)))
(define-fun e58 ((c19 (_ BitVec 64))) Bool (= (e50 c19) (e57 c19)))
(define-fun e59 ((c19 (_ BitVec 64))) Bool (or (e28 c19) (e58 c19)))
(define-fun e60 () Bool (forall ((c19 (_ BitVec 64))) (e59 c19)))
(declare-fun c63 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e64 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) (_ BitVec 64) (c63 c61 c62))
(define-fun e65 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e66 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (bvult (e64 c61 c62) (e65 c61 c62)))
(define-fun e67 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (bvult c61 (e65 c61 c62)))
(define-fun e68 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (bvult c62 (e65 c61 c62)))
(define-fun e69 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (and (e67 c61 c62) (e68 c61 c62)))
(define-fun e70 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (not (e69 c61 c62)))
(define-fun e71 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (or (e66 c61 c62) (e70 c61 c62)))
(define-fun e72 () Bool (forall ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) (e71 c61 c62)))
(declare-fun c74 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e75 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) (_ BitVec 64) (c74 c61 c73))
(define-fun e76 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) (_ BitVec 64) (c63 c61 (e75 c61 c62 c73)))
(define-fun e77 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) Bool (= c73 (e76 c61 c62 c73)))
(define-fun e78 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) (_ BitVec 64) (c63 c61 c62))
(define-fun e79 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) (_ BitVec 64) (c74 c61 (e78 c61 c62 c73)))
(define-fun e80 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) Bool (= c62 (e79 c61 c62 c73)))
(define-fun e81 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) Bool (and (e77 c61 c62 c73) (e80 c61 c62 c73)))
(define-fun e82 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e83 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) Bool (bvult c61 (e82 c61 c62 c73)))
(define-fun e84 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) Bool (bvult c62 (e82 c61 c62 c73)))
(define-fun e85 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) Bool (bvult c73 (e82 c61 c62 c73)))
(define-fun e86 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) Bool (and (e83 c61 c62 c73) (e84 c61 c62 c73) (e85 c61 c62 c73)))
(define-fun e87 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) Bool (not (e86 c61 c62 c73)))
(define-fun e88 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) Bool (or (e81 c61 c62 c73) (e87 c61 c62 c73)))
(define-fun e89 () Bool (forall ((c61 (_ BitVec 64)) (c62 (_ BitVec 64)) (c73 (_ BitVec 64))) (e88 c61 c62 c73)))
(define-fun e90 ((c61 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e91 ((c61 (_ BitVec 64))) (_ BitVec 64) (c63 c61 c61))
(define-fun e92 ((c61 (_ BitVec 64))) Bool (= (e90 c61) (e91 c61)))
(define-fun e93 ((c61 (_ BitVec 64))) (_ BitVec 64) (c74 c61 (e90 c61)))
(define-fun e94 ((c61 (_ BitVec 64))) Bool (= c61 (e93 c61)))
(define-fun e95 ((c61 (_ BitVec 64))) Bool (and (e92 c61) (e94 c61)))
(define-fun e96 ((c61 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e97 ((c61 (_ BitVec 64))) Bool (bvult c61 (e96 c61)))
(define-fun e98 ((c61 (_ BitVec 64))) (_ BitVec 64) (c1 c61))
(define-fun e99 ((c61 (_ BitVec 64))) Bool (= c61 (e98 c61)))
(define-fun e100 ((c61 (_ BitVec 64))) (_ BitVec 64) (c6 c61))
(define-fun e101 ((c61 (_ BitVec 64))) Bool (= (e90 c61) (e100 c61)))
(define-fun e102 ((c61 (_ BitVec 64))) Bool (and (e97 c61) (e101 c61)))
(define-fun e103 ((c61 (_ BitVec 64))) Bool (not (e102 c61)))
(define-fun e104 ((c61 (_ BitVec 64))) Bool (and (e99 c61) (e103 c61)))
(define-fun e105 ((c61 (_ BitVec 64))) Bool (and (e97 c61) (e104 c61)))
(define-fun e106 ((c61 (_ BitVec 64))) Bool (not (e105 c61)))
(define-fun e107 ((c61 (_ BitVec 64))) Bool (or (e95 c61) (e106 c61)))
(define-fun e108 () Bool (forall ((c61 (_ BitVec 64))) (e107 c61)))
(define-fun e109 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) (_ BitVec 64) (c1 c62))
(define-fun e110 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (= c61 (e109 c61 c62)))
(define-fun e111 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e112 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) (_ BitVec 64) (c6 c62))
(define-fun e113 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (= (e111 c61 c62) (e112 c61 c62)))
(define-fun e114 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (and (e68 c61 c62) (e113 c61 c62)))
(define-fun e115 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (not (e114 c61 c62)))
(define-fun e116 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (and (e110 c61 c62) (e115 c61 c62)))
(define-fun e117 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) (_ BitVec 64) (c49 c61))
(define-fun e118 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (bvult (e64 c61 c62) (e117 c61 c62)))
(define-fun e119 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (and (=> (e116 c61 c62) (e118 c61 c62)) (=> (e118 c61 c62) (e116 c61 c62))))
(define-fun e120 ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) Bool (or (e70 c61 c62) (e119 c61 c62)))
(define-fun e121 () Bool (forall ((c61 (_ BitVec 64)) (c62 (_ BitVec 64))) (e120 c61 c62)))
(define-fun e122 ((c61 (_ BitVec 64))) (_ BitVec 64) (c49 c61))
(define-fun e123 ((c61 (_ BitVec 64))) Bool (bvule (e122 c61) (e96 c61)))
(define-fun e124 ((c61 (_ BitVec 64))) Bool (not (e97 c61)))
(define-fun e125 ((c61 (_ BitVec 64))) Bool (or (e123 c61) (e124 c61)))
(define-fun e126 () Bool (forall ((c61 (_ BitVec 64))) (e125 c61)))
(define-fun e127 () Bool (and e72 e89 e108 e121 e126))
(define-fun e128 () Bool (and e30 e38 e41 e48 e55 e60 e127))
(define-fun e129 () Bool (not e128))
(define-fun e130 () Bool (or e18 e129))
(define-fun e131 () Bool (not e130))
(assert e131)
(check-sat)
