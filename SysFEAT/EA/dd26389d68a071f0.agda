{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Functionality Map: 
Family of Functionalitys and their dependencies that, together, defines the scope of a hardware or software architecture.

Documentation : https://framework.sysfeat.com/pages/dd26389d68a071f0.htm

External references:
  Modern Analyst - Using Feature Trees to Depict Scope: https://www.modernanalyst.com/Resources/Articles/tabid/115/ID/6061/Using-Feature-Trees-to-Depict-Scope.aspx
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26389d68a071f0 where -- ========== Functionality Map

open import Agda.Primitive
open import SysFEAT..dd2638ba68a073a8 public -- Business Resource Capability Map
open import SysFEAT.EA.dd26aa0568a1f939 public -- Functionality

FunctionalityMap : PropertyType
FunctionalityMap = Property

--  FunctionalityMap is subTypeOf BusinessResourceCapabilityMap
st-dd26389d68a071f0-dd2638ba68a073a8 : FunctionalityMap ⊏ₑ BusinessResourceCapabilityMap
st-dd26389d68a071f0-dd2638ba68a073a8 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Scoped Functionality: 
Set of Functionalitys that are is the scope of a Functionality Map.
-}
-- Aggregate Member : Scoped Functionality
ScopedFunctionality : ClassOfClassOfIndividual
ScopedFunctionality = ClassOfIndividual


--  ScopedFunctionality is subTypeOf BusinessResourceCapabilityMember
st-dd26abe268a1ffbc-dd26a8b568a1f5be : ScopedFunctionality ⊏⋆ₑ BusinessResourceCapabilityMember
st-dd26abe268a1ffbc-dd26a8b568a1f5be = polySubTypeOf-identity

-- Membership relation
membershipOfScopedFunctionality :  Linkage FunctionalityMap ScopedFunctionality
membershipOfScopedFunctionality = make_upwardNestingRelation "scopedFunctionality membership" "nested scopedFunctionality"

-- Aggregation relation
aggregationOfFunctionalityScopedFunctionality :  Linkage ScopedFunctionality Functionality
aggregationOfFunctionalityScopedFunctionality = make_Relation "Functionality aggregation" "aggregated Functionality"

{- scopedFunctionality : derived relation obtained by composing
   membershipOfScopedFunctionality and aggregationOfFunctionalityScopedFunctionality
   It directly links an Functionality Map to the final aggregated Functionality
   hiding the reifying ScopedFunctionality
-}
scopedFunctionality : Linkage FunctionalityMap Functionality
scopedFunctionality = membershipOfScopedFunctionality  ∘  aggregationOfFunctionalityScopedFunctionality


