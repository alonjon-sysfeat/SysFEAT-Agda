{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Third Order Class: 
Third Order Class is the Meta-Class that is the powertype of  Second Order Class. 
Each instance of Third Order Class is a direct of indirect subtype of Second Order Class. 

Documentation : https://framework.sysfeat.com/pages/05e6065d6aa42f5f.htm

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.05e6065d6aa42f5f where -- ============================ Third Order Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass and MetaRelation

-- ============================================================
-- 0. Third Order Class (M3 level)
-- ThirdOrderClass is locked at level 3  (Set₃)
-- ============================================================ 
ThirdOrderClass : Set (lsuc (lsuc (lsuc (lsuc lzero))))
ThirdOrderClass = MetaClass (lsuc(lzero))