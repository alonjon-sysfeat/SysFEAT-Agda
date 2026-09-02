{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Function: 
A Business Function is a Mezzo unit within the enterprises functional division of labor. It is used to shape the enterprise management structure in regard to how it produces, consumes or processes Business Outcome Events: information, energy, materiel.A Business Function specifies Skills and Functionality(ies) required to perform their activities effectively.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7c4094d2552717db where -- ========== Business Function

open import Agda.Primitive
open import SysFEAT.EA.7c40987055271d04 public -- Conceptual Agent

BusinessFunction : ClassOfClassOfBoundedIndividual
BusinessFunction = ClassOfBoundedIndividual

--  BusinessFunction is subTypeOf ConceptualAgent
st-7c4098f155271f5c : BusinessFunction ⊏ₑ ConceptualAgent
st-7c4098f155271f5c = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Function: -}
specializedBusinessFunction :  Linkage BusinessFunction BusinessFunction
specializedBusinessFunction = make_subTypeOf "Specialized Business Function" "specializedBusinessFunction"

postulate -- specializedBusinessFunction is subTypeOf specializedAgent
  st-325a380c66f35081-2b5b440b66ed56d4  : specializedBusinessFunction   ⊏⋆ᵣ  specializedAgent 

{- sub-business function: 
A sub-business function represents the role of a Business Function within a parent Business Function. 
-}
-- Aggregate Member : sub-business function
subbusinessfunction : ClassOfClassOfIndividual
subbusinessfunction = ClassOfIndividual

-- Membership relation
membershipOfsubbusinessfunction :  Linkage BusinessFunction subbusinessfunction
membershipOfsubbusinessfunction = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessFunctionsubbusinessfunction :  Linkage subbusinessfunction BusinessFunction
aggregationOfBusinessFunctionsubbusinessfunction = aggregationOfBuildingBlock

{- subbusinessfunction : derived relation obtained by composing
   membershipOfsubbusinessfunction and aggregationOfBusinessFunctionsubbusinessfunction
   It directly links an Business Function to the final aggregated BusinessFunction
   hiding the reifying subbusinessfunction
-}
subbusinessfunction : Linkage BusinessFunction BusinessFunction
subbusinessfunction = membershipOfsubbusinessfunction  ∘  aggregationOfBusinessFunctionsubbusinessfunction
