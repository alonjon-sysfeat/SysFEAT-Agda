{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Assurance Case: 
An Assurance Case is a claim that a particular enterprise asset or group of Functional Asset adequately mitigates certain identified Risk Types by means of appropriated Control Measures.An Assurance Case shall provide confidence that the concerned assets will function as intended in their environment of use.Privacy Processing Activity(ies), Data Lineages are examples of Assurance Cases .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.07ca19e95dd854e9 where -- ========== Assurance Case

open import Agda.Primitive
open import SysFEAT.SOF.01ce05606859794a public -- Initiative Instrument
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.f1600ddf67d8444b public -- Control Measure
open import SysFEAT.EA.01f1156d689b5ecc public -- Control Directive
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.SOF.0e55206a66f11ec5 public -- Risk Type

AssuranceCase : ClassOfClassOfBoundedIndividual
AssuranceCase = ClassOfBoundedIndividual

--  AssuranceCase withAspect InitiativeInstrument
st-fc4c36fb5ede1433 : AssuranceCase ⊏ₐₑ (InitiativeInstrument (lsuc(lzero)))
st-fc4c36fb5ede1433 = polySubTypeOf-identity

-- == Relationships =======================

{- Constraining Policy: 
Policy covered by the Assurance Case.
-}
constrainingPolicy :  Linkage AssuranceCase Policy
constrainingPolicy = make_subTypeOf "Constraining Policy" "constrainingPolicy"


{- Applied Control Measure: 
Set of Control Measures that are claimed to be applied in the context of an Assurance Case.
-}
-- Aggregate Member : Applied Control Measure
AppliedControlMeasure : ClassOfClassOfIndividual
AppliedControlMeasure = ClassOfIndividual

-- Membership relation
membershipOfAppliedControlMeasure :  Linkage AssuranceCase AppliedControlMeasure
membershipOfAppliedControlMeasure = membershipOfAggregateMember

-- Aggregation relation
aggregationOfControlMeasureAppliedControlMeasure :  Linkage AppliedControlMeasure ControlMeasure
aggregationOfControlMeasureAppliedControlMeasure = aggregationOfBuildingBlock

{- appliedControlMeasure : derived relation obtained by composing
   membershipOfAppliedControlMeasure and aggregationOfControlMeasureAppliedControlMeasure
   It directly links an Assurance Case to the final aggregated ControlMeasure
   hiding the reifying AppliedControlMeasure
-}
appliedControlMeasure : Linkage AssuranceCase ControlMeasure
appliedControlMeasure = membershipOfAppliedControlMeasure  ∘  aggregationOfControlMeasureAppliedControlMeasure

{- Enforced Directive: 
Set of Control Directives that the Assurance Case ensures that they are enforced in the Involved Asset of the Assurance Case.
-}
-- Aggregate Member : Enforced Directive
EnforcedDirective : ClassOfClassOfIndividual
EnforcedDirective = ClassOfIndividual

-- Membership relation
membershipOfEnforcedDirective :  Linkage AssuranceCase EnforcedDirective
membershipOfEnforcedDirective = membershipOfAggregateMember

-- Aggregation relation
aggregationOfControlDirectiveEnforcedDirective :  Linkage EnforcedDirective ControlDirective
aggregationOfControlDirectiveEnforcedDirective = aggregationOfBuildingBlock

{- enforcedDirective : derived relation obtained by composing
   membershipOfEnforcedDirective and aggregationOfControlDirectiveEnforcedDirective
   It directly links an Assurance Case to the final aggregated ControlDirective
   hiding the reifying EnforcedDirective
-}
enforcedDirective : Linkage AssuranceCase ControlDirective
enforcedDirective = membershipOfEnforcedDirective  ∘  aggregationOfControlDirectiveEnforcedDirective

{- Involved Asset: 
Functional Asset involved in an Assurance Case.
-}
-- Aggregate Member : Involved Asset
InvolvedAsset : ClassOfClassOfIndividual
InvolvedAsset = ClassOfIndividual

-- Membership relation
membershipOfInvolvedAsset :  Linkage AssuranceCase InvolvedAsset
membershipOfInvolvedAsset = membershipOfAggregateMember

-- Aggregation relation
aggregationOfFunctionalAssetInvolvedAsset :  Linkage InvolvedAsset FunctionalAsset
aggregationOfFunctionalAssetInvolvedAsset = aggregationOfBuildingBlock

{- involvedAsset : derived relation obtained by composing
   membershipOfInvolvedAsset and aggregationOfFunctionalAssetInvolvedAsset
   It directly links an Assurance Case to the final aggregated FunctionalAsset
   hiding the reifying InvolvedAsset
-}
involvedAsset : Linkage AssuranceCase FunctionalAsset
involvedAsset = membershipOfInvolvedAsset  ∘  aggregationOfFunctionalAssetInvolvedAsset

{- Mitigated Risk: 
A  Mitigated Risk is a potential threat or danger that has been reduced in severity, likelihood, or impact through deliberate actions or strategies.
-}
-- Aggregate Member : Mitigated Risk
MitigatedRisk : ThirdOrderClass
MitigatedRisk = SecondOrderClass

-- Membership relation
membershipOfMitigatedRisk :  Linkage AssuranceCase MitigatedRisk
membershipOfMitigatedRisk = membershipOfAggregateMember

-- Aggregation relation
aggregationOfRiskTypeMitigatedRisk :  Linkage MitigatedRisk RiskType
aggregationOfRiskTypeMitigatedRisk = aggregationOfBuildingBlock

{- mitigatedRisk : derived relation obtained by composing
   membershipOfMitigatedRisk and aggregationOfRiskTypeMitigatedRisk
   It directly links an Assurance Case to the final aggregated RiskType
   hiding the reifying MitigatedRisk
-}
mitigatedRisk : Linkage AssuranceCase RiskType
mitigatedRisk = membershipOfMitigatedRisk  ∘  aggregationOfRiskTypeMitigatedRisk
