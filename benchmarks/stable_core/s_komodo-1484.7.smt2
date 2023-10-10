(set-option :auto-config false)
(set-option :produce-unsat-cores false)
(set-option :smt.mbqi.max_iterations 10000000)
(set-option :smt.relevancy 0)
(declare-fun c2 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e3 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (c2 c0 c1))
(define-fun e4 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv256 64))
(define-fun e5 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (bvult (e3 c0 c1) (e4 c0 c1)))
(define-fun e6 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e7 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (bvult c0 (e6 c0 c1)))
(define-fun e8 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv512 64))
(define-fun e9 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (bvult c1 (e8 c0 c1)))
(declare-fun c10 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e11 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (c10 c0))
(define-fun e12 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (bvult (e11 c0 c1) (e6 c0 c1)))
(define-fun e13 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv1 64))
(declare-fun c14 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e15 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (c14 (e11 c0 c1)))
(define-fun e16 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e13 c0 c1) (e15 c0 c1)))
(define-fun e17 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e12 c0 c1) (e16 c0 c1)))
(define-fun e18 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv2 64))
(declare-fun c19 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e20 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (c19 (e11 c0 c1) (e18 c0 c1)))
(define-fun e21 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e18 c0 c1) (e20 c0 c1)))
(define-fun e22 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e21 c0 c1)))
(define-fun e23 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e7 c0 c1) (e9 c0 c1) (e17 c0 c1) (e22 c0 c1)))
(declare-fun c24 ((_ BitVec 64) (_ BitVec 64)) Bool)
(define-fun e25 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (c24 c0 c1))
(define-fun e26 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv5 64))
(define-fun e27 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (c14 c0))
(define-fun e28 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e26 c0 c1) (e27 c0 c1)))
(define-fun e29 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e7 c0 c1) (e28 c0 c1)))
(declare-fun c30 ((_ BitVec 64) (_ BitVec 64)) Bool)
(define-fun e31 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (c30 c0 c1))
(define-fun e32 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e31 c0 c1)))
(define-fun e33 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e23 c0 c1) (e25 c0 c1) (e29 c0 c1) (e32 c0 c1)))
(define-fun e34 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e33 c0 c1)))
(define-fun e35 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (or (e5 c0 c1) (e34 c0 c1)))
(define-fun e36 () Bool (forall ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (e35 c0 c1)))
(declare-fun c37 () (_ BitVec 64))
(define-fun e38 () (_ BitVec 64) (_ bv1024 64))
(define-fun e39 () Bool (bvult c37 e38))
(define-fun e40 () (_ BitVec 64) (_ bv2 64))
(define-fun e41 () (_ BitVec 64) (c14 c37))
(define-fun e42 () Bool (= e40 e41))
(define-fun e43 () Bool (and e39 e42))
(declare-fun c44 () Bool)
(define-fun e45 () Bool (not c44))
(define-fun e46 () Bool (or e43 e45))
(define-fun e47 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e48 ((c0 (_ BitVec 64))) (_ BitVec 64) (c19 c0 (e47 c0)))
(define-fun e49 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e50 ((c0 (_ BitVec 64))) Bool (bvult (e48 c0) (e49 c0)))
(define-fun e51 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv3 64))
(define-fun e52 ((c0 (_ BitVec 64))) (_ BitVec 64) (c14 (e48 c0)))
(define-fun e53 ((c0 (_ BitVec 64))) Bool (= (e51 c0) (e52 c0)))
(define-fun e54 ((c0 (_ BitVec 64))) Bool (and (e50 c0) (e53 c0)))
(define-fun e55 ((c0 (_ BitVec 64))) (_ BitVec 64) (c10 (e48 c0)))
(define-fun e56 ((c0 (_ BitVec 64))) Bool (= c0 (e55 c0)))
(define-fun e57 ((c0 (_ BitVec 64))) Bool (and (e54 c0) (e56 c0)))
(define-fun e58 ((c0 (_ BitVec 64))) Bool (bvult c0 (e49 c0)))
(define-fun e59 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv1 64))
(define-fun e60 ((c0 (_ BitVec 64))) (_ BitVec 64) (c14 c0))
(define-fun e61 ((c0 (_ BitVec 64))) Bool (= (e59 c0) (e60 c0)))
(define-fun e62 ((c0 (_ BitVec 64))) Bool (and (e58 c0) (e61 c0)))
(define-fun e63 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv2 64))
(define-fun e64 ((c0 (_ BitVec 64))) (_ BitVec 64) (c19 c0 (e63 c0)))
(define-fun e65 ((c0 (_ BitVec 64))) Bool (= (e63 c0) (e64 c0)))
(define-fun e66 ((c0 (_ BitVec 64))) Bool (not (e65 c0)))
(define-fun e67 ((c0 (_ BitVec 64))) Bool (and (e62 c0) (e66 c0)))
(define-fun e68 ((c0 (_ BitVec 64))) Bool (not (e67 c0)))
(define-fun e69 ((c0 (_ BitVec 64))) Bool (or (e57 c0) (e68 c0)))
(define-fun e70 () Bool (forall ((c0 (_ BitVec 64))) (e69 c0)))
(define-fun e71 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (c19 c0 c1))
(define-fun e72 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv524314 64))
(define-fun e73 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (bvadd (e72 c0 c1) (e3 c0 c1)))
(define-fun e74 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv10 64))
(define-fun e75 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (bvshl (e73 c0 c1) (e74 c0 c1)))
(define-fun e76 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (bvor (e13 c0 c1) (e75 c0 c1)))
(define-fun e77 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e78 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (ite (e25 c0 c1) (e76 c0 c1) (e77 c0 c1)))
(define-fun e79 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e71 c0 c1) (e78 c0 c1)))
(define-fun e80 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv3 64))
(define-fun e81 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e80 c0 c1) (e27 c0 c1)))
(define-fun e82 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e7 c0 c1) (e81 c0 c1)))
(define-fun e83 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv4 64))
(define-fun e84 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e83 c0 c1) (e27 c0 c1)))
(define-fun e85 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e7 c0 c1) (e84 c0 c1)))
(define-fun e86 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (or (e82 c0 c1) (e85 c0 c1)))
(define-fun e87 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e23 c0 c1) (e86 c0 c1)))
(define-fun e88 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e87 c0 c1)))
(define-fun e89 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (or (e79 c0 c1) (e88 c0 c1)))
(define-fun e90 () Bool (forall ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (e89 c0 c1)))
(define-fun e91 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv193 64))
(define-fun e92 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv14 64))
(declare-fun c93 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e94 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (c93 c0 c1))
(define-fun e95 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (bvand (e92 c0 c1) (e94 c0 c1)))
(define-fun e96 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (bvor (e91 c0 c1) (e95 c0 c1)))
(define-fun e97 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (bvor (e75 c0 c1) (e96 c0 c1)))
(define-fun e98 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv525824 64))
(define-fun e99 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (bvadd (e98 c0 c1) (e3 c0 c1)))
(define-fun e100 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (bvshl (e99 c0 c1) (e74 c0 c1)))
(define-fun e101 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (bvor (e96 c0 c1) (e100 c0 c1)))
(define-fun e102 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (ite (e31 c0 c1) (e97 c0 c1) (e101 c0 c1)))
(define-fun e103 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (ite (e25 c0 c1) (e102 c0 c1) (e77 c0 c1)))
(define-fun e104 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e71 c0 c1) (e103 c0 c1)))
(define-fun e105 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e23 c0 c1) (e29 c0 c1)))
(define-fun e106 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e105 c0 c1)))
(define-fun e107 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (or (e104 c0 c1) (e106 c0 c1)))
(define-fun e108 () Bool (forall ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (e107 c0 c1)))
(define-fun e109 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (bvult (e3 c0 c1) (e6 c0 c1)))
(define-fun e110 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (c14 (e3 c0 c1)))
(define-fun e111 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e83 c0 c1) (e110 c0 c1)))
(define-fun e112 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e109 c0 c1) (e111 c0 c1)))
(define-fun e113 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (c10 (e3 c0 c1)))
(define-fun e114 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e11 c0 c1) (e113 c0 c1)))
(define-fun e115 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e112 c0 c1) (e114 c0 c1)))
(define-fun e116 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e23 c0 c1) (e82 c0 c1) (e25 c0 c1)))
(define-fun e117 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e116 c0 c1)))
(define-fun e118 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (or (e115 c0 c1) (e117 c0 c1)))
(define-fun e119 () Bool (forall ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (e118 c0 c1)))
(define-fun e120 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e26 c0 c1) (e110 c0 c1)))
(define-fun e121 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e109 c0 c1) (e120 c0 c1)))
(define-fun e122 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e114 c0 c1) (e121 c0 c1)))
(define-fun e123 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e23 c0 c1) (e85 c0 c1) (e25 c0 c1)))
(define-fun e124 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e123 c0 c1)))
(define-fun e125 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (or (e122 c0 c1) (e124 c0 c1)))
(define-fun e126 () Bool (forall ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (e125 c0 c1)))
(define-fun e127 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (_ BitVec 64) (_ bv6 64))
(define-fun e128 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e127 c0 c1) (e110 c0 c1)))
(define-fun e129 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e109 c0 c1) (e128 c0 c1)))
(define-fun e130 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e114 c0 c1) (e129 c0 c1)))
(define-fun e131 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e23 c0 c1) (e25 c0 c1) (e29 c0 c1) (e31 c0 c1)))
(define-fun e132 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e131 c0 c1)))
(define-fun e133 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (or (e130 c0 c1) (e132 c0 c1)))
(define-fun e134 () Bool (forall ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (e133 c0 c1)))
(define-fun e135 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e25 c0 c1)))
(define-fun e136 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e77 c0 c1) (e3 c0 c1)))
(define-fun e137 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e135 c0 c1) (e136 c0 c1)))
(define-fun e138 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e82 c0 c1)))
(define-fun e139 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e85 c0 c1)))
(define-fun e140 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e29 c0 c1)))
(define-fun e141 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e7 c0 c1) (e9 c0 c1) (e138 c0 c1) (e139 c0 c1) (e140 c0 c1)))
(define-fun e142 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e141 c0 c1)))
(define-fun e143 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (or (e137 c0 c1) (e142 c0 c1)))
(define-fun e144 () Bool (forall ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (e143 c0 c1)))
(define-fun e145 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (= (e77 c0 c1) (e94 c0 c1)))
(define-fun e146 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e32 c0 c1) (e145 c0 c1)))
(define-fun e147 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (and (e7 c0 c1) (e9 c0 c1) (e140 c0 c1)))
(define-fun e148 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (not (e147 c0 c1)))
(define-fun e149 ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) Bool (or (e146 c0 c1) (e148 c0 c1)))
(define-fun e150 () Bool (forall ((c0 (_ BitVec 64)) (c1 (_ BitVec 64))) (e149 c0 c1)))
(define-fun e151 () Bool (and e46 e70 e90 e108 e119 e126 e134 e36 e144 e150))
(define-fun e153 ((c152 (_ BitVec 64))) (_ BitVec 64) (c10 c152))
(define-fun e154 ((c152 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e155 ((c152 (_ BitVec 64))) Bool (bvult (e153 c152) (e154 c152)))
(define-fun e156 ((c152 (_ BitVec 64))) (_ BitVec 64) (_ bv1 64))
(define-fun e157 ((c152 (_ BitVec 64))) (_ BitVec 64) (c14 (e153 c152)))
(define-fun e158 ((c152 (_ BitVec 64))) Bool (= (e156 c152) (e157 c152)))
(define-fun e159 ((c152 (_ BitVec 64))) Bool (and (e155 c152) (e158 c152)))
(define-fun e160 ((c152 (_ BitVec 64))) Bool (bvult c152 (e154 c152)))
(define-fun e161 ((c152 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e162 ((c152 (_ BitVec 64))) (_ BitVec 64) (c14 c152))
(define-fun e163 ((c152 (_ BitVec 64))) Bool (= (e161 c152) (e162 c152)))
(define-fun e164 ((c152 (_ BitVec 64))) Bool (not (e163 c152)))
(define-fun e165 ((c152 (_ BitVec 64))) Bool (and (e160 c152) (e164 c152)))
(define-fun e166 ((c152 (_ BitVec 64))) Bool (not (e165 c152)))
(define-fun e167 ((c152 (_ BitVec 64))) Bool (or (e159 c152) (e166 c152)))
(define-fun e168 () Bool (forall ((c152 (_ BitVec 64))) (e167 c152)))
(define-fun e169 () Bool (and e151 e168))
(define-fun e170 () Bool (not e169))
(define-fun e171 () Bool (or e36 e170))
(define-fun e172 () Bool (not e171))
(assert e172)
(check-sat)
