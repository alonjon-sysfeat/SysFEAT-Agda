{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology System: 
A Technology System is a Resource Agent Type which produces and reacts to Technology Outcome Events through Technology Interfaces. Technology Systems are enablers of Business Systems. They do not directly deliver Business Outcome Events to internal or external customers. They deliver Technology Outcome Events required by Business Systems to operate.

Documentation : https://framework.sysfeat.com/pages/0cbd1fa663fe18ac.htm

External references:
  OpenGroup - ArchiMate - Technology Internal Active Structure Element: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Technology-Layer.html#sec-technology-Active-Structure-Elements
  OpenGroup - OAA - Digital Technology: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#_digital_technology
  OMG - UAF - Technology: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Technology
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0cbd1fa663fe18ac where -- ========== Technology System

open import Agda.Primitive
open import SysFEAT.EA.d16006d362e085f2 public -- Technology Operating Asset
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type
open import SysFEAT.EA.26b8382f5eeae265 public -- Technology Interface

TechnologySystem : ClassOfClassOfBoundedIndividual
TechnologySystem = ClassOfBoundedIndividual


--  TechnologySystem is subTypeOf TechnologyOperatingAsset
st-0cbd1fa663fe18ac-d16006d362e085f2 : TechnologySystem ⊏ₑ TechnologyOperatingAsset
st-0cbd1fa663fe18ac-d16006d362e085f2 = polySubTypeOf-identity

--  TechnologySystem is subTypeOf ResourceAgentType
st-0cbd1fa663fe18ac-e2ef091962147ad7 : TechnologySystem ⊏ₑ ResourceAgentType
st-0cbd1fa663fe18ac-e2ef091962147ad7 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Technology Connection: -}
-- Aggregate Member : Technology Connection
TechnologyConnection : ClassOfClassOfIndividual
TechnologyConnection = ClassOfIndividual


-- Membership relation
membershipOfTechnologyConnection :  Linkage TechnologySystem TechnologyConnection
membershipOfTechnologyConnection = make_upwardNestingRelation "technologyConnection membership" "nested technologyConnection"

-- Aggregation relation
aggregationOfTechnologyInterfaceTechnologyConnection :  Linkage TechnologyConnection TechnologyInterface
aggregationOfTechnologyInterfaceTechnologyConnection = make_Relation "TechnologyInterface aggregation" "aggregated TechnologyInterface"

{- technologyConnection : derived relation obtained by composing
   membershipOfTechnologyConnection and aggregationOfTechnologyInterfaceTechnologyConnection
   It directly links an Technology System to the final aggregated TechnologyInterface
   hiding the reifying TechnologyConnection
-}
technologyConnection : Linkage TechnologySystem TechnologyInterface
technologyConnection = membershipOfTechnologyConnection  ∘  aggregationOfTechnologyInterfaceTechnologyConnection



-- -------------------------------------------------------------------------------------------- 
{- Technology System Member: -}
-- Aggregate Member : Technology System Member
TechnologySystemMember : ClassOfClassOfBoundedIndividual
TechnologySystemMember = ClassOfBoundedIndividual



--  TechnologySystemMember is subTypeOf TechnologyOperatingAssetPart
st-d1600a8f62e08fb2-d265d98e68b13ce4 : TechnologySystemMember ⊏ₑ TechnologyOperatingAssetPart
st-d1600a8f62e08fb2-d265d98e68b13ce4 = polySubTypeOf-identity

--  TechnologySystemMember is subTypeOf ResourceAgentPart
st-d1600a8f62e08fb2-e2ef09de62147eb7 : TechnologySystemMember ⊏ₑ ResourceAgentPart
st-d1600a8f62e08fb2-e2ef09de62147eb7 = polySubTypeOf-identity

--  TechnologySystemMember is subTypeOf TechnologyOperatingAsset
st-d1600a8f62e08fb2-d16006d362e085f2 : TechnologySystemMember ⊏ₑ TechnologyOperatingAsset
st-d1600a8f62e08fb2-d16006d362e085f2 = polySubTypeOf-identity

-- Membership relation
membershipOfTechnologySystemMember :  Linkage TechnologySystem TechnologySystemMember
membershipOfTechnologySystemMember = make_upwardNestingRelation "technologySystemMember membership" "nested technologySystemMember"

-- Aggregation relation
aggregationOfTechnologyOperatingAssetTechnologySystemMember :  Linkage TechnologySystemMember TechnologyOperatingAsset
aggregationOfTechnologyOperatingAssetTechnologySystemMember = make_Relation "TechnologyOperatingAsset aggregation" "aggregated TechnologyOperatingAsset"

{- technologySystemMember : derived relation obtained by composing
   membershipOfTechnologySystemMember and aggregationOfTechnologyOperatingAssetTechnologySystemMember
   It directly links an Technology System to the final aggregated TechnologyOperatingAsset
   hiding the reifying TechnologySystemMember
-}
technologySystemMember : Linkage TechnologySystem TechnologyOperatingAsset
technologySystemMember = membershipOfTechnologySystemMember  ∘  aggregationOfTechnologyOperatingAssetTechnologySystemMember


