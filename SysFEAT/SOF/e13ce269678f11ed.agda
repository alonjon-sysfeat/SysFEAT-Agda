{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset State Type: 
An Asset State Type is a temporal slice type of an Asset Type.Examples:. The lifecyle phases of buildings such as a skycraper: construction phase, operation and maintenance phase, decommissioning phase.. The lifecycle phases of a person, such as childhood, adulthood, eldery stage.. The phases of a volcanic eruption:  magma accumulation, plinian phase, eruptive phase, effusive phase, declining phase.. The lifecyle phases of a hospital such as construction phase, operation and maintenance phase, renovation and expansion phase, decommissioning phase.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e13ce269678f11ed where -- ========== Asset State Type

open import Agda.Primitive
open import SysFEAT.UpperOntology.342f43ae66156429 public -- State Class
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type

AssetStateType : ClassOfClassOfBoundedIndividual
AssetStateType = ClassOfBoundedIndividual

--  AssetStateType is subTypeOf StateClass
st-e13ce5c6678f1777 : AssetStateType ⊏ₑ StateClass
st-e13ce5c6678f1777 = polySubTypeOf-identity

--  AssetStateType is subTypeOf AssetType
st-e13ce272678f1233 : AssetStateType ⊏ₑ AssetType
st-e13ce272678f1233 = polySubTypeOf-identity

-- == Relationships =======================
