{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Third Order Class: 
Third Order Class is the Ordered Meta-Class that is the powertype of  Second Order Class. Each instance of Third Order Class Class is a direct of indirect subtype of Second Order Class.

Documentation : https://framework.sysfeat.com/pages/bab6c7346ad70999.htm

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.bab6c7346ad70999 where -- ========== Third Order Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.d9cce4e96937128c public -- Ordered Meta-Class
open import SysFEAT.UpperOntology.0dd6b365690d316b public -- Ordered Entity

ThirdOrderClass : Set (lsuc (lsuc (lsuc (lsuc lzero))))
ThirdOrderClass = MetaClass (lsuc(lzero))

--  ThirdOrderClass withAspect OrderedMetaClass
st-bab6c7346ad70999-d9cce4e96937128c : ThirdOrderClass ⊏ₐₑ (OrderedMetaClass (lsuc(lsuc(lzero))))
st-bab6c7346ad70999-d9cce4e96937128c  = trivialPolySubTypeOf




