{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy: 
A Policy is a Directive that is not directly enforceable whose purpose is to govern, guide or constrain the structure and Behavior Type of Agent Types in the enterprise. Policies provide the basis for rules and govern Behavior Types carried out by Agent Types.Example of Policys are Regulation Articles, Business Policys or Architecture principles.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.190c7429689664b5 where -- ========== Policy

open import Agda.Primitive
open import SysFEAT.SOF.515c6b23689335c3 public -- Directive

Policy : PropertyType
Policy = ClassOfProperty

--  Policy is subTypeOf Directive
st-a67dc17c5f8e90ea : Policy ⊏ₑ Directive
st-a67dc17c5f8e90ea = polySubTypeOf-identity

-- == Relationships =======================

{- Realized Policy: -}
realizedPolicy :  Linkage Policy Policy
realizedPolicy = make_subTypeOf "Realized Policy" "realizedPolicy"

postulate -- realizedPolicy is subTypeOf realizedDirective
  st-01f10d3b689b501e-190c7a7f6896696e  : realizedPolicy   ⊏⋆ᵣ  realizedDirective 

{- Specialized Policy: -}
specializedPolicy :  Linkage Policy Policy
specializedPolicy = make_subTypeOf "Specialized Policy" "specializedPolicy"

postulate -- specializedPolicy is subTypeOf specializedDirective
  st-01f10d80689b50a2-190c79c26896690d  : specializedPolicy   ⊏⋆ᵣ  specializedDirective 
