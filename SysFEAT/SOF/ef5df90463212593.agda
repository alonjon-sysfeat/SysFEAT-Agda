{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Location Type: 
A Location Type is a type of Location that is a geopolitical location.Example:- Continent- Country- City- District- Street
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ef5df90463212593 where -- ========== Location Type

open import Agda.Primitive
open import SysFEAT.UpperOntology.3492c53e619642ed public -- Class of Bounded Individual

LocationType : ClassOfClassOfBoundedIndividual
LocationType = ClassOfBoundedIndividual

--  LocationType is subTypeOf ClassOfBoundedIndividual
st-ef5df90c632126a6 : LocationType ⊏ₑ ClassOfBoundedIndividual
st-ef5df90c632126a6 = polySubTypeOf-identity

-- == Relationships =======================
