{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Decision Type: 
A Decision Type is a Resolution Type that refers to a kind of Decision used to state what shall or shall not be done regarding an enterprise Asset Block.Decision Types define a set of Decision Options which are the possible values that will result from a decision-making process.For instance, when making decisions about invesment on an enterprise asset, the possible options can be: eliminate, invest, migrate.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.366c47e1675c1c07 where -- ========== Decision Type

open import Agda.Primitive
open import SysFEAT.SOF.366c4627675c1aad public -- Resolution Type

DecisionType : ThirdOrderClass
DecisionType = SecondOrderClass

postulate --  DecisionType is subTypeOf ResolutionType
  st-83bba0a66192407d : DecisionType ⊏ₑ ResolutionType

-- == Relationships =======================
