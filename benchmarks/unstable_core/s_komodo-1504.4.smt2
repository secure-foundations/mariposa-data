(set-option :auto-config false)
(set-option :produce-unsat-cores false)
(set-option :smt.mbqi.max_iterations 10000000)
(set-option :smt.relevancy 0)
(define-fun e1 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(declare-fun c2 () Bool)
(define-fun e3 ((c0 (_ BitVec 64))) Bool (not c2))
(declare-fun c4 () (_ BitVec 64))
(define-fun e5 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv512 64))
(define-fun e6 ((c0 (_ BitVec 64))) Bool (bvult c4 (e5 c0)))
(declare-fun c7 () (_ BitVec 64))
(define-fun e8 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e9 ((c0 (_ BitVec 64))) Bool (bvult c7 (e8 c0)))
(define-fun e10 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv4 64))
(declare-fun c11 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e12 ((c0 (_ BitVec 64))) (_ BitVec 64) (c11 c7))
(define-fun e13 ((c0 (_ BitVec 64))) Bool (= (e10 c0) (e12 c0)))
(define-fun e14 ((c0 (_ BitVec 64))) Bool (and (e9 c0) (e13 c0)))
(declare-fun c15 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e16 ((c0 (_ BitVec 64))) (_ BitVec 64) (c15 c7 c4))
(define-fun e17 ((c0 (_ BitVec 64))) Bool (= (e1 c0) (e16 c0)))
(declare-fun c18 () (_ BitVec 64))
(define-fun e19 ((c0 (_ BitVec 64))) Bool (bvult c18 (e8 c0)))
(define-fun e20 ((c0 (_ BitVec 64))) (_ BitVec 64) (c11 c18))
(define-fun e21 ((c0 (_ BitVec 64))) Bool (= (e1 c0) (e20 c0)))
(define-fun e22 ((c0 (_ BitVec 64))) Bool (and (e19 c0) (e21 c0)))
(declare-fun c23 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e24 ((c0 (_ BitVec 64))) (_ BitVec 64) (c23 c7))
(define-fun e25 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv2 64))
(define-fun e26 ((c0 (_ BitVec 64))) (_ BitVec 64) (c15 (e24 c0) (e25 c0)))
(define-fun e27 ((c0 (_ BitVec 64))) Bool (= (e1 c0) (e26 c0)))
(define-fun e28 ((c0 (_ BitVec 64))) Bool (and (e3 c0) (e6 c0) (e14 c0) (e17 c0) (e22 c0) (e27 c0)))
(define-fun e29 ((c0 (_ BitVec 64))) Bool (= c0 (e24 c0)))
(define-fun e30 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv1 64))
(declare-fun c31 ((_ BitVec 64)) (_ BitVec 64))
(define-fun e32 ((c0 (_ BitVec 64))) (_ BitVec 64) (c31 c0))
(define-fun e33 ((c0 (_ BitVec 64))) (_ BitVec 64) (bvadd (e30 c0) (e32 c0)))
(define-fun e34 ((c0 (_ BitVec 64))) (_ BitVec 64) (ite (e29 c0) (e33 c0) (e32 c0)))
(define-fun e35 ((c0 (_ BitVec 64))) Bool (not (e6 c0)))
(define-fun e36 ((c0 (_ BitVec 64))) Bool (not (e14 c0)))
(define-fun e37 ((c0 (_ BitVec 64))) Bool (not (e17 c0)))
(define-fun e38 ((c0 (_ BitVec 64))) Bool (not (e19 c0)))
(define-fun e39 ((c0 (_ BitVec 64))) Bool (not (e22 c0)))
(define-fun e40 ((c0 (_ BitVec 64))) Bool (not (e27 c0)))
(define-fun e41 ((c0 (_ BitVec 64))) Bool (and (e22 c0) (e40 c0)))
(define-fun e42 ((c0 (_ BitVec 64))) Bool (or (e39 c0) (e41 c0)))
(define-fun e43 ((c0 (_ BitVec 64))) Bool (and (e19 c0) (e42 c0)))
(define-fun e44 ((c0 (_ BitVec 64))) Bool (or (e38 c0) (e43 c0)))
(define-fun e45 ((c0 (_ BitVec 64))) Bool (and (e17 c0) (e44 c0)))
(define-fun e46 ((c0 (_ BitVec 64))) Bool (or (e37 c0) (e45 c0)))
(define-fun e47 ((c0 (_ BitVec 64))) Bool (and (e14 c0) (e46 c0)))
(define-fun e48 ((c0 (_ BitVec 64))) Bool (or (e36 c0) (e47 c0)))
(define-fun e49 ((c0 (_ BitVec 64))) Bool (and (e6 c0) (e48 c0)))
(define-fun e50 ((c0 (_ BitVec 64))) Bool (or (e35 c0) (e49 c0)))
(define-fun e51 ((c0 (_ BitVec 64))) Bool (and (e3 c0) (e50 c0)))
(define-fun e52 ((c0 (_ BitVec 64))) Bool (or c2 (e51 c0)))
(define-fun e53 ((c0 (_ BitVec 64))) (_ BitVec 64) (bvor (ite (e28 c0) (e34 c0) (_ bv0 64)) (ite (e52 c0) (e32 c0) (_ bv0 64))))
(define-fun e54 ((c0 (_ BitVec 64))) Bool (= (e1 c0) (e53 c0)))
(define-fun e55 ((c0 (_ BitVec 64))) Bool (bvult c0 (e8 c0)))
(define-fun e56 ((c0 (_ BitVec 64))) Bool (= c18 c0))
(define-fun e57 ((c0 (_ BitVec 64))) (_ BitVec 64) (_ bv5 64))
(define-fun e58 ((c0 (_ BitVec 64))) (_ BitVec 64) (c11 c0))
(define-fun e59 ((c0 (_ BitVec 64))) (_ BitVec 64) (ite (e56 c0) (e57 c0) (e58 c0)))
(define-fun e60 ((c0 (_ BitVec 64))) (_ BitVec 64) (bvor (ite (e28 c0) (e59 c0) (_ bv0 64)) (ite (e52 c0) (e58 c0) (_ bv0 64))))
(define-fun e61 ((c0 (_ BitVec 64))) Bool (= (e30 c0) (e60 c0)))
(define-fun e62 ((c0 (_ BitVec 64))) Bool (and (e55 c0) (e61 c0)))
(define-fun e63 ((c0 (_ BitVec 64))) Bool (not (e62 c0)))
(define-fun e64 ((c0 (_ BitVec 64))) Bool (and (e55 c0) (e63 c0)))
(define-fun e65 ((c0 (_ BitVec 64))) Bool (not (e64 c0)))
(define-fun e66 ((c0 (_ BitVec 64))) Bool (or (e54 c0) (e65 c0)))
(define-fun e67 () Bool (forall ((c0 (_ BitVec 64))) (e66 c0)))
(define-fun e68 ((c0 (_ BitVec 64))) (_ BitVec 64) (c23 c0))
(define-fun e69 ((c0 (_ BitVec 64))) Bool (= c0 (e68 c0)))
(define-fun e70 ((c0 (_ BitVec 64))) Bool (= (e30 c0) (e58 c0)))
(define-fun e71 ((c0 (_ BitVec 64))) Bool (and (e55 c0) (e70 c0)))
(define-fun e72 ((c0 (_ BitVec 64))) Bool (not (e71 c0)))
(define-fun e73 ((c0 (_ BitVec 64))) Bool (or (e69 c0) (e72 c0)))
(define-fun e74 () Bool (forall ((c0 (_ BitVec 64))) (e73 c0)))
(define-fun e75 ((c0 (_ BitVec 64))) Bool (bvult (e68 c0) (e8 c0)))
(define-fun e76 ((c0 (_ BitVec 64))) Bool (= (e1 c0) (e58 c0)))
(define-fun e77 ((c0 (_ BitVec 64))) Bool (not (e76 c0)))
(define-fun e78 ((c0 (_ BitVec 64))) Bool (and (e55 c0) (e77 c0)))
(define-fun e79 ((c0 (_ BitVec 64))) Bool (not (e78 c0)))
(define-fun e80 ((c0 (_ BitVec 64))) Bool (or (e75 c0) (e79 c0)))
(define-fun e81 () Bool (forall ((c0 (_ BitVec 64))) (e80 c0)))
(declare-fun c82 () (_ BitVec 64))
(define-fun e83 () (_ BitVec 64) (_ bv1024 64))
(define-fun e84 () Bool (bvult c82 e83))
(define-fun e85 () (_ BitVec 64) (_ bv2 64))
(define-fun e86 () (_ BitVec 64) (c11 c82))
(define-fun e87 () Bool (= e85 e86))
(define-fun e88 () Bool (and e84 e87))
(define-fun e89 () Bool (not c2))
(define-fun e90 () Bool (or e88 e89))
(define-fun e91 ((c0 (_ BitVec 64))) Bool (= (e1 c0) (e32 c0)))
(define-fun e92 ((c0 (_ BitVec 64))) Bool (and (e55 c0) (e72 c0)))
(define-fun e93 ((c0 (_ BitVec 64))) Bool (not (e92 c0)))
(define-fun e94 ((c0 (_ BitVec 64))) Bool (or (e91 c0) (e93 c0)))
(define-fun e95 () Bool (forall ((c0 (_ BitVec 64))) (e94 c0)))
(define-fun e96 ((c0 (_ BitVec 64))) (_ BitVec 64) (c15 c0 (e30 c0)))
(define-fun e97 ((c0 (_ BitVec 64))) Bool (= (e32 c0) (e96 c0)))
(define-fun e98 ((c0 (_ BitVec 64))) Bool (or (e72 c0) (e97 c0)))
(define-fun e99 () Bool (forall ((c0 (_ BitVec 64))) (e98 c0)))
(declare-fun c102 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e103 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) (_ BitVec 64) (c102 c100 c101))
(define-fun e104 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e105 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (bvult (e103 c100 c101) (e104 c100 c101)))
(define-fun e106 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (bvult c100 (e104 c100 c101)))
(define-fun e107 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (bvult c101 (e104 c100 c101)))
(define-fun e108 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (and (e106 c100 c101) (e107 c100 c101)))
(define-fun e109 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (not (e108 c100 c101)))
(define-fun e110 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (or (e105 c100 c101) (e109 c100 c101)))
(define-fun e111 () Bool (forall ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) (e110 c100 c101)))
(declare-fun c113 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(define-fun e114 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) (_ BitVec 64) (c113 c100 c112))
(define-fun e115 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) (_ BitVec 64) (c102 c100 (e114 c100 c101 c112)))
(define-fun e116 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) Bool (= c112 (e115 c100 c101 c112)))
(define-fun e117 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) (_ BitVec 64) (c102 c100 c101))
(define-fun e118 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) (_ BitVec 64) (c113 c100 (e117 c100 c101 c112)))
(define-fun e119 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) Bool (= c101 (e118 c100 c101 c112)))
(define-fun e120 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) Bool (and (e116 c100 c101 c112) (e119 c100 c101 c112)))
(define-fun e121 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e122 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) Bool (bvult c100 (e121 c100 c101 c112)))
(define-fun e123 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) Bool (bvult c101 (e121 c100 c101 c112)))
(define-fun e124 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) Bool (bvult c112 (e121 c100 c101 c112)))
(define-fun e125 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) Bool (and (e122 c100 c101 c112) (e123 c100 c101 c112) (e124 c100 c101 c112)))
(define-fun e126 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) Bool (not (e125 c100 c101 c112)))
(define-fun e127 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) Bool (or (e120 c100 c101 c112) (e126 c100 c101 c112)))
(define-fun e128 () Bool (forall ((c100 (_ BitVec 64)) (c101 (_ BitVec 64)) (c112 (_ BitVec 64))) (e127 c100 c101 c112)))
(define-fun e129 ((c100 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e130 ((c100 (_ BitVec 64))) (_ BitVec 64) (c102 c100 c100))
(define-fun e131 ((c100 (_ BitVec 64))) Bool (= (e129 c100) (e130 c100)))
(define-fun e132 ((c100 (_ BitVec 64))) (_ BitVec 64) (c113 c100 (e129 c100)))
(define-fun e133 ((c100 (_ BitVec 64))) Bool (= c100 (e132 c100)))
(define-fun e134 ((c100 (_ BitVec 64))) Bool (and (e131 c100) (e133 c100)))
(define-fun e135 ((c100 (_ BitVec 64))) (_ BitVec 64) (_ bv1024 64))
(define-fun e136 ((c100 (_ BitVec 64))) Bool (bvult c100 (e135 c100)))
(define-fun e137 ((c100 (_ BitVec 64))) (_ BitVec 64) (c23 c100))
(define-fun e138 ((c100 (_ BitVec 64))) Bool (= c100 (e137 c100)))
(define-fun e139 ((c100 (_ BitVec 64))) (_ BitVec 64) (c11 c100))
(define-fun e140 ((c100 (_ BitVec 64))) Bool (= (e129 c100) (e139 c100)))
(define-fun e141 ((c100 (_ BitVec 64))) Bool (and (e136 c100) (e140 c100)))
(define-fun e142 ((c100 (_ BitVec 64))) Bool (not (e141 c100)))
(define-fun e143 ((c100 (_ BitVec 64))) Bool (and (e138 c100) (e142 c100)))
(define-fun e144 ((c100 (_ BitVec 64))) Bool (and (e136 c100) (e143 c100)))
(define-fun e145 ((c100 (_ BitVec 64))) Bool (not (e144 c100)))
(define-fun e146 ((c100 (_ BitVec 64))) Bool (or (e134 c100) (e145 c100)))
(define-fun e147 () Bool (forall ((c100 (_ BitVec 64))) (e146 c100)))
(define-fun e148 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) (_ BitVec 64) (c23 c101))
(define-fun e149 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (= c100 (e148 c100 c101)))
(define-fun e150 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) (_ BitVec 64) (_ bv0 64))
(define-fun e151 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) (_ BitVec 64) (c11 c101))
(define-fun e152 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (= (e150 c100 c101) (e151 c100 c101)))
(define-fun e153 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (and (e107 c100 c101) (e152 c100 c101)))
(define-fun e154 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (not (e153 c100 c101)))
(define-fun e155 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (and (e149 c100 c101) (e154 c100 c101)))
(define-fun e156 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) (_ BitVec 64) (c31 c100))
(define-fun e157 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (bvult (e103 c100 c101) (e156 c100 c101)))
(define-fun e158 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (and (=> (e155 c100 c101) (e157 c100 c101)) (=> (e157 c100 c101) (e155 c100 c101))))
(define-fun e159 ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) Bool (or (e109 c100 c101) (e158 c100 c101)))
(define-fun e160 () Bool (forall ((c100 (_ BitVec 64)) (c101 (_ BitVec 64))) (e159 c100 c101)))
(define-fun e161 ((c100 (_ BitVec 64))) (_ BitVec 64) (c31 c100))
(define-fun e162 ((c100 (_ BitVec 64))) Bool (bvule (e161 c100) (e135 c100)))
(define-fun e163 ((c100 (_ BitVec 64))) Bool (not (e136 c100)))
(define-fun e164 ((c100 (_ BitVec 64))) Bool (or (e162 c100) (e163 c100)))
(define-fun e165 () Bool (forall ((c100 (_ BitVec 64))) (e164 c100)))
(define-fun e166 () Bool (and e111 e128 e147 e160 e165))
(define-fun e167 () Bool (and e74 e81 e84 e90 e95 e99 e166))
(define-fun e168 () Bool (not e167))
(define-fun e169 () Bool (or e67 e168))
(define-fun e170 () Bool (not e169))
(assert e170)
(check-sat)
