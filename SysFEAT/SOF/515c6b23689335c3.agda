{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Directive: 
A Directive is an authoritative declaration that indicates how Agents and their Behaviors should be (or should not be) in the enterprise.Specifically, a Directive defines, constrains or liberates some aspects of an Agent and its Behaviors. As such, Directives shall be considered as constraning Asset Propertys.Directives are intended to assert agent structures or to control or influence their Behaviors. Directives are stated in declarative form.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.515c6b23689335c3 where -- ========== Directive

open import Agda.Primitive
open import SysFEAT.UpperOntology.8cfa942f68527849 public -- Unbounded Aggregate
open import SysFEAT.SOF.9397c3d86877842f public -- Policy Asset
open import SysFEAT.SOF.952ea6c467285821 public -- Policy Category
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset

Directive : PropertyType
Directive = ClassOfProperty

--  Directive withAspect UnboundedAggregate
st-0861381666579466 : Directive ⊏ₐₑ (UnboundedAggregate (lsuc(lzero)))
st-0861381666579466 = polySubTypeOf-identity

--  Directive withAspect PolicyAsset
st-9397c69468778c7e : Directive ⊏ₐₑ (PolicyAsset (lsuc(lzero)))
st-9397c69468778c7e = polySubTypeOf-identity

-- == Relationships =======================

{- Policy Category: -}
policyCategory :  Linkage Directive PolicyCategory
policyCategory = make_instanceOf "Policy Category" "policyCategory"

postulate -- policyCategory is subTypeOf categoryOfArchitectureBlock
  st-515c6b2b689335ef-f69620606a0f9c94  : policyCategory   ⊏⋆ᵣ  categoryOfArchitectureBlock  {lsuc(lsuc(lzero))}

{- Specialized Directive: -}
specializedDirective :  Linkage Directive Directive
specializedDirective = make_subTypeOf "Specialized Directive" "specializedDirective"

postulate -- specializedDirective is subTypeOf specializedProperty
  st-190c79c26896690d-1662112a68925f90  : specializedDirective   ⊏⋆ᵣ  specializedProperty 

{- Realized Directive: -}
realizedDirective :  Linkage Directive Directive
realizedDirective = make_subTypeOf "Realized Directive" "realizedDirective"

postulate -- realizedDirective is subTypeOf specializedProperty
  st-190c7a7f6896696e-1662112a68925f90  : realizedDirective   ⊏⋆ᵣ  specializedProperty 

{- Directive Subject: -}
-- Aggregate Member : Directive Subject
DirectiveSubject : ClassOfClassOfIndividual
DirectiveSubject = ClassOfIndividual

-- Membership relation
membershipOfDirectiveSubject :  Linkage Directive DirectiveSubject
membershipOfDirectiveSubject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationAssetDirectiveSubject :  Linkage DirectiveSubject InformationAsset
aggregationOfInformationAssetDirectiveSubject = aggregationOfBuildingBlock

{- directiveSubject : derived relation obtained by composing
   membershipOfDirectiveSubject and aggregationOfInformationAssetDirectiveSubject
   It directly links an Directive to the final aggregated InformationAsset
   hiding the reifying DirectiveSubject
-}
directiveSubject : Linkage Directive InformationAsset
directiveSubject = membershipOfDirectiveSubject  ∘  aggregationOfInformationAssetDirectiveSubject
