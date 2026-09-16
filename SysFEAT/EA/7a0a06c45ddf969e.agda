{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business System Interaction Process: 
A Business System Interaction Process is a black-box behavior involving the components of a Business System, interacting in order to produce Business Outcome Events.This includes:1) A course of events represented by Resource Flows depicting the steps towards the delivery of expected Business Outcome Events.2) Interacting Business Systems who participate to the story.

Documentation : https://framework.sysfeat.com/pages/7a0a06c45ddf969e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7a0a06c45ddf969e where -- ========== Business System Interaction Process

open import Agda.Primitive
open import SysFEAT.EA.6246927f61b81996 public -- Business System Asset
open import SysFEAT.EA.230b35b461d8884d public -- Business Resource Interaction Process

BusinessSystemInteractionProcess : ClassOfClassOfBoundedIndividual
BusinessSystemInteractionProcess = ClassOfBoundedIndividual

--  BusinessSystemInteractionProcess is subTypeOf BusinessSystemAsset
st-7a0a06c45ddf969e-6246927f61b81996 : BusinessSystemInteractionProcess ⊏ₑ BusinessSystemAsset
st-7a0a06c45ddf969e-6246927f61b81996 = polySubTypeOf-identity

--  BusinessSystemInteractionProcess is subTypeOf BusinessResourceInteractionProcess
st-7a0a06c45ddf969e-230b35b461d8884d : BusinessSystemInteractionProcess ⊏ₑ BusinessResourceInteractionProcess
st-7a0a06c45ddf969e-230b35b461d8884d = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business System Scenario: -}
specializedBusinessSystemScenario :  Linkage BusinessSystemInteractionProcess BusinessSystemInteractionProcess
specializedBusinessSystemScenario = make_subTypeOf "Specialized Business System Scenario" "Specialized Business System Scenario"

postulate -- specializedBusinessSystemScenario is subTypeOf specializedBusinessSystemAsset
  st-325a377266f347ec-325a37b966f34e1e  : specializedBusinessSystemScenario   ⊏⋆ᵣ  specializedBusinessSystemAsset 
