{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer Task: 
Activity done by a Customer in context of its duty and for which he/she expresses his/her needs and painpoints.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d170d24a5be72d09 where -- ========== Customer Task

open import Agda.Primitive
open import SysFEAT.EA.8a5c926e5c0d632c public -- Customer Activity
open import SysFEAT.EA.d170d3075be72e6b public -- Customer Need
open import SysFEAT.EA.d170d9925be73b35 public -- Pain Point (Type)

CustomerTask : ClassOfClassOfBoundedIndividual
CustomerTask = ClassOfBoundedIndividual

--  CustomerTask is subTypeOf CustomerActivity
st-ce31f05e5d5b3098 : CustomerTask ⊏ₑ CustomerActivity
st-ce31f05e5d5b3098 = polySubTypeOf-identity

-- == Relationships =======================

{- Expressed Need: -}
expressedNeed :  Linkage CustomerTask CustomerNeed
expressedNeed = make_classOfHolonymy "Expressed Need" "expressedNeed"


{- felt paint point: -}
feltpaintpoint :  Linkage CustomerTask PainPointType
feltpaintpoint = make_classOfHolonymy "felt paint point" "feltpaintpoint"

