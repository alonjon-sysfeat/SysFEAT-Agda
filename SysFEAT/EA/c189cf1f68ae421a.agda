{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Rule: 
A Business Rule is a rule that is under business jurisdiction. A rules being under  business jurisdiction  means that it is under the jurisdiction of the community that it governs or guides - that the community can opt to change or discard the rule. Laws of physics may be relevant to an Enterprise; legislation and regulations may be imposed on it; external standards. These things are not Business Rules from the companys perspective, since it does not have the authority to change them. The company will decide how to react to laws and regulations, and will create Business Rules to ensure compliance with them. Similarly, it will create Business Rules to ensure that standards or best practices are implemented as intended.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c189cf1f68ae421a where -- ========== Business Rule

open import Agda.Primitive
open import SysFEAT.EA.23bf9a7868ad2d94 public -- Business Resource Rule

BusinessRule : PropertyType
BusinessRule = ClassOfProperty

--  BusinessRule is subTypeOf BusinessResourceRule
st-278678f65b2533f6 : BusinessRule ⊏ₑ BusinessResourceRule
st-278678f65b2533f6 = polySubTypeOf-identity

-- == Relationships =======================
