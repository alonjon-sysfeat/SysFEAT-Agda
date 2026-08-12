{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset State: 
An Asset State is a temporal slice of a Individual Asset.Examples:. The state of the Eiffel tower during the 1900 World Fair, with its improved elevators and electric illuminations (Apr 14, 1900 - Nov 12, 1900).. William Shakespeare in its early theatrical career (1592-1600).. Confucius in its early childhood.. The first Plinian phase of the Mount Vesuvius eruption (18 to 20 hour, Aug. 24 A.D. 79), that projected a column of volcanic debris and hot gases.. Oackland digital hospital after its renovation (2022 - ...).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.3a2f3c44679664b5 where -- ========== Asset State

open import Agda.Primitive
open import SysFEAT.SOF.ebcfaeac5ad76ed7 public -- Individual Asset
open import SysFEAT.SOF.e13ce269678f11ed public -- Asset State Type

AssetState : StateClass
AssetState = StateConcept


postulate --  AssetState is subTypeOf IndividualAsset
  st-3a2f3c2567966494 : AssetState ⊏ₑ IndividualAsset

-- == Relationships =======================
