{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

System Rule: 


Documentation : https://framework.sysfeat.com/pages/23bf9a5368ad2bdd.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.23bf9a5368ad2bdd where -- ========== System Rule

open import Agda.Primitive
open import SysFEAT.EA.23bf9a7868ad2d94 public -- Business Resource Rule
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset

SystemRule : PropertyType
SystemRule = ClassOfProperty

--  SystemRule is subTypeOf BusinessResourceRule
st-23bf9a5368ad2bdd-23bf9a7868ad2d94 : SystemRule ⊏ₑ BusinessResourceRule
st-23bf9a5368ad2bdd-23bf9a7868ad2d94 = polySubTypeOf-identity

-- == Relationships =======================

{- System Rule Subject: -}
-- Aggregate Member : System Rule Subject
SystemRuleSubject : ClassOfClassOfIndividual
SystemRuleSubject = ClassOfIndividual

-- Membership relation
membershipOfSystemRuleSubject :  Linkage SystemRule SystemRuleSubject
membershipOfSystemRuleSubject = make_upwardNestingRelation "systemRuleSubject membership" "nested systemRuleSubject"

-- Aggregation relation
aggregationOfDataAssetSystemRuleSubject :  Linkage SystemRuleSubject DataAsset
aggregationOfDataAssetSystemRuleSubject = make_Relation "DataAsset aggregation" "aggregated DataAsset"

{- systemRuleSubject : derived relation obtained by composing
   membershipOfSystemRuleSubject and aggregationOfDataAssetSystemRuleSubject
   It directly links an System Rule to the final aggregated DataAsset
   hiding the reifying SystemRuleSubject
-}
systemRuleSubject : Linkage SystemRule DataAsset
systemRuleSubject = membershipOfSystemRuleSubject  ∘  aggregationOfDataAssetSystemRuleSubject


