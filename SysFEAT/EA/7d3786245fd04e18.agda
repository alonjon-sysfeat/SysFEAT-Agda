{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Representative: 
A National Representative is a representative of the legal entity in one of the Member States where the data subjects, whose personal data are processed, are located.

Documentation : https://framework.sysfeat.com/pages/7d3786245fd04e18.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d3786245fd04e18 where -- ========== Privacy Representative

open import Agda.Primitive
open import SysFEAT.EA.7d3786425fd04ea2 public -- Privacy Block
open import SysFEAT.EA.c7dad43c5ae92d25 public -- Person

PrivacyRepresentative : ClassOfBoundedIndividual
PrivacyRepresentative = BoundedIndividual

--  PrivacyRepresentative is subTypeOf PrivacyBlock
st-7d3786245fd04e18-7d3786425fd04ea2 : PrivacyRepresentative ⊏ₑ PrivacyBlock
st-7d3786245fd04e18-7d3786425fd04ea2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Person: -}
person :  Linkage PrivacyRepresentative Person
person = make_holonymyRelation "Person" "Person"

