{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Business Rule: 
A Conceptual Business Rule is a rule that is under business jurisdiction. A rules being under business jurisdiction means that it is under the jurisdiction of the semantic community that it governs or guides - that the semantic community can opt to change or discard the rule. Laws of physics may be relevant to a company (or other semantic community); legislation and regulations may be imposed on it; external standards and best Semantics of Business Vocabulary and Business Rules, v1.0 161 practices may be adopted. These things are not business rules from the companys perspective, since it does not have the authority to change them. The company will decide how to react to laws and regulations, and will create business rules to ensure compliance with them. Similarly, it will create business rules to ensure that standards or best practices are implemented as intended. 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd269a5468a09a74 where -- ========== Conceptual Business Rule

open import Agda.Primitive
open import SysFEAT.SOF.190c74f868966584 public -- Behavioral Rule

ConceptualBusinessRule : PropertyType
ConceptualBusinessRule = ClassOfProperty

--  ConceptualBusinessRule is subTypeOf BehavioralRule
st-6a70954867875110 : ConceptualBusinessRule ⊏ₑ BehavioralRule
st-6a70954867875110 = polySubTypeOf-identity

-- == Relationships =======================
