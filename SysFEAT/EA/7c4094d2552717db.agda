{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Function: 
A Business Function is a Mezzo unit within the enterprises functional division of labor. It is used to shape the enterprise management structure in regard to how it produces, consumes or processes Business Outcome Events: information, energy, materiel.A Business Function specifies Skills and Functionality(ies) required to perform their activities effectively.

Documentation : https://framework.sysfeat.com/pages/7c4094d2552717db.htm

External references:
  Russell Ackoff - System of concepts - FunctionalDivisionOfLabor: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#FunctionalDivisionOfLabor
  Christensen Institute - Modularity: https://www.christenseninstitute.org/theory/modularity
  OpenGroup - TOGAF 9 - Definition - Business Function: https://pubs.opengroup.org/architecture/togaf9-doc/m/chap03.html#tag_03_26
  OpenGroup - TOGAF - Definition - Business Function: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_29
  OMG - UAF - OperationalPerformer: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#OperationalPerformer
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7c4094d2552717db where -- ========== Business Function

open import Agda.Primitive
open import SysFEAT.EA.7c40987055271d04 public -- Conceptual Agent

BusinessFunction : ClassOfClassOfBoundedIndividual
BusinessFunction = ClassOfBoundedIndividual


--  BusinessFunction is subTypeOf ConceptualAgent
st-7c4094d2552717db-7c40987055271d04 : BusinessFunction ⊏ₑ ConceptualAgent
st-7c4094d2552717db-7c40987055271d04 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Business Function: -}
specializedBusinessFunction :  Linkage BusinessFunction BusinessFunction
specializedBusinessFunction = make_subTypeOf "Specialized Business Function" "Specialized Business Function"

postulate -- specializedBusinessFunction is subTypeOf specializedAgent
  st-325a380c66f35081-2b5b440b66ed56d4  : specializedBusinessFunction  ⊏⋆ᵣ  specializedAgent

-- -------------------------------------------------------------------------------------------- 
{- sub-business function: 
A sub-business function represents the role of a Business Function within a parent Business Function. 
-}
-- Aggregate Member : sub-business function
subbusinessfunction : ClassOfClassOfBoundedIndividual
subbusinessfunction = ClassOfBoundedIndividual



--  subbusinessfunction is subTypeOf ConceptualAgentPart
st-4150b7705eccc24e-258c36965fd28288 : subbusinessfunction ⊏ₑ ConceptualAgentPart
st-4150b7705eccc24e-258c36965fd28288 = polySubTypeOf-identity

--  subbusinessfunction is subTypeOf BusinessFunction
st-4150b7705eccc24e-7c4094d2552717db : subbusinessfunction ⊏ₑ BusinessFunction
st-4150b7705eccc24e-7c4094d2552717db = polySubTypeOf-identity

-- Membership relation
membershipOfsubbusinessfunction :  Linkage BusinessFunction subbusinessfunction
membershipOfsubbusinessfunction = make_upwardNestingRelation "subbusinessfunction membership" "nested subbusinessfunction"

-- Aggregation relation
aggregationOfBusinessFunctionsubbusinessfunction :  Linkage subbusinessfunction BusinessFunction
aggregationOfBusinessFunctionsubbusinessfunction = make_Relation "BusinessFunction aggregation" "aggregated BusinessFunction"

{- subbusinessfunction : derived relation obtained by composing
   membershipOfsubbusinessfunction and aggregationOfBusinessFunctionsubbusinessfunction
   It directly links an Business Function to the final aggregated BusinessFunction
   hiding the reifying subbusinessfunction
-}
subbusinessfunction : Linkage BusinessFunction BusinessFunction
subbusinessfunction = membershipOfsubbusinessfunction  ∘  aggregationOfBusinessFunctionsubbusinessfunction


