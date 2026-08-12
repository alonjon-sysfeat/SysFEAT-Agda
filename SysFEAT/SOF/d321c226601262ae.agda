{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Enduring Initiative: 
An Enduring Initiative is a long term Initiative which involves roadmapping and governance. Enterprises and their Management Systems are typical Enduring Initiatives.1. Enduring Initiatives are purpose-oriented. 2. Enduring Initiatives are change management systems: they have objectives regarding the purposes they pursue, maintain and develop.3. Enduring Initiatives are measured to ensure they meet their Goals.4. Enduring Initiatives are organized according to subsidiary levels, ensuring autonomy and ownership at each level of delegation while providing responsibility and accountability in achieving common goals.5. Enduring Initiatives are under the control of an associed Governing Team.6.Governing Teams have instruments used to carry out governance: responsibility assignment, assessments, workflow, decision records, incident records.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d321c226601262ae where -- ========== Enduring Initiative

open import Agda.Primitive
open import SysFEAT.SOF.0eb95dce6855be2e public -- Model Container
open import SysFEAT.SOF.0ffeec41600be08a public -- Initiative
open import SysFEAT.UpperOntology.342f74b166156e02 public -- Whole Life Individual
open import SysFEAT.SOF.01ce05606859794a public -- Initiative Instrument
open import SysFEAT.SOF.e78c5eb0661989f9 public -- Initiative Stage
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property

EnduringInitiative : ClassOfBoundedIndividual
EnduringInitiative = BoundedIndividual

postulate --  EnduringInitiative withAspect ModelContainer
  st-32f03433600c0c1c : EnduringInitiative ⊏ₐₑ (ModelContainer lzero)

postulate --  EnduringInitiative is subTypeOf Initiative
  st-d321c2666012634d : EnduringInitiative ⊏ₑ Initiative

postulate --  EnduringInitiative is subTypeOf WholeLifeIndividual
  st-a44fdc6b67459081 : EnduringInitiative ⊏ₑ WholeLifeIndividual

-- == Relationships =======================

{- Packaged Initiative Resource: -}
packagedInitiativeResource : ∀ {u} →  Linkage EnduringInitiative (InitiativeInstrument u)
packagedInitiativeResource = make_nestingRelation "Packaged Initiative Resource" "packagedInitiativeResource"

postulate -- packagedInitiativeResource is subTypeOf packagedModelBlock
  st-01ce058868597974-3346b0ad687846e9  : packagedInitiativeResource  {lzero}  ⊏⋆ᵣ  packagedModelBlock {lzero} {lzero}

{- Dependent Initiative: -}
dependentInitiative :  Linkage EnduringInitiative EnduringInitiative
dependentInitiative = make_holonymyRelation "Dependent Initiative" "dependentInitiative"

postulate -- dependentInitiative is subTypeOf importedContainer
  st-5b7a0d6361f5633f-0eb94b9b6854a563  : dependentInitiative   ⊏⋆ᵣ  importedContainer {lzero}

{- Sub-Initiative: -}
subInitiative :  Linkage EnduringInitiative EnduringInitiative
subInitiative = make_holonymyRelation "Sub-Initiative" "subInitiative"

postulate -- subInitiative is subTypeOf holonymyRelation
  st-5b7a0ecf61f5650a-c2f2c6ce66e90be7  : subInitiative   ⊏⋆ᵣ  holonymyRelation 
postulate -- subInitiative is subTypeOf subModelPackage
  st-5b7a0ecf61f5650a-0eb96c446855cb6c  : subInitiative   ⊏⋆ᵣ  subModelPackage 

{- Roadmap: 
Set of all Initiative Stages of an Enduring Initiative that, along with coordinating Initiative Milestones, forms its roadmap.
-}
roadmap :  Linkage EnduringInitiative InitiativeStage
roadmap = make_holonymyRelation "Roadmap" "roadmap"

postulate -- roadmap is subTypeOf holonymyRelation
  st-29df685860086c52-c2f2c6ce66e90be7  : roadmap   ⊏⋆ᵣ  holonymyRelation 

{- Goal: 
A Goal is a statement about an Asset Property of  Initiative Subjects of an Enduring Initiative that cannot be obtained within a specified period, but which can be obtained over a longer time period.
-}
-- Aggregate Member : Goal
Goal : ClassOfClassOfIndividual
Goal = ClassOfIndividual

-- Membership relation
membershipOfGoal :  Linkage EnduringInitiative Goal
membershipOfGoal = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAssetPropertyGoal :  Linkage Goal AssetProperty
aggregationOfAssetPropertyGoal = aggregationOfBuildingBlock

{- goal : derived relation obtained by composing
   membershipOfGoal and aggregationOfAssetPropertyGoal
   It directly links an Enduring Initiative to the final aggregated AssetProperty
   hiding the reifying Goal
-}
goal : Linkage EnduringInitiative AssetProperty
goal = membershipOfGoal  ∘  aggregationOfAssetPropertyGoal
