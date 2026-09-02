{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Asset: 
Business Assets are Resource Functional Assets that define how Business Outcome Events are specified, produced and consumed.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6a70b9f6678763db where -- ========== Business Asset

open import Agda.Primitive
open import SysFEAT.EA.9bec9fbf66fb0d6f public -- Resource Functional Asset
open import SysFEAT.EA.0e55230266f12252 public -- Operational Risk Type

BusinessAsset : ClassOfClassOfBoundedIndividual
BusinessAsset = ClassOfBoundedIndividual

--  BusinessAsset is subTypeOf ResourceFunctionalAsset
st-6a70bb636787650b : BusinessAsset ⊏ₑ ResourceFunctionalAsset
st-6a70bb636787650b = polySubTypeOf-identity

-- == Relationships =======================

{- Operational Risk: 
An Operational Risk is a kind of Risk that refers to the potential for loss resulting from inadequate structure or behavior of a Business Operating Asset.
-}
-- Aggregate Member : Operational Risk
OperationalRisk : ThirdOrderClass
OperationalRisk = SecondOrderClass

-- Membership relation
membershipOfOperationalRisk :  Linkage BusinessAsset OperationalRisk
membershipOfOperationalRisk = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperationalRiskTypeOperationalRisk :  Linkage OperationalRisk OperationalRiskType
aggregationOfOperationalRiskTypeOperationalRisk = aggregationOfBuildingBlock

{- operationalRisk : derived relation obtained by composing
   membershipOfOperationalRisk and aggregationOfOperationalRiskTypeOperationalRisk
   It directly links an Business Asset to the final aggregated OperationalRiskType
   hiding the reifying OperationalRisk
-}
operationalRisk : Linkage BusinessAsset OperationalRiskType
operationalRisk = membershipOfOperationalRisk  ∘  aggregationOfOperationalRiskTypeOperationalRisk
