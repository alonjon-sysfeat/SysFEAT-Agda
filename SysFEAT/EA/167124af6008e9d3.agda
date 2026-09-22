{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulatory agency: 
A Regulatory agency is public or government agency that supervises, through investigative and corrective powers, the application of Regulatory Frameworks.

Documentation : https://framework.sysfeat.com/pages/167124af6008e9d3.htm

External references:
  WordNet - Regulatory Agency: https://en-word.net/ili/i81006
  UCF Glossary - regulatory body: https://compliancedictionary.com/term/381708
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.167124af6008e9d3 where -- ========== Regulatory agency

open import Agda.Primitive
open import SysFEAT.EA.e78cee446618815a public -- Legal Entity
open import SysFEAT.SOF.8d5e986f552e28d5 public -- Location

Regulatoryagency : AgentType
Regulatoryagency = IndividualAgent


--  Regulatoryagency is subTypeOf LegalEntity
st-167124af6008e9d3-e78cee446618815a : Regulatoryagency ⊏ₑ LegalEntity
st-167124af6008e9d3-e78cee446618815a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Regulator Location: -}
regulatorLocation :  Linkage Regulatoryagency Location
regulatorLocation = make_holonymyRelation "Regulator Location" "Regulator Location"

postulate -- regulatorLocation is subTypeOf locatedat
  st-167126066008ed22-167126a16008efeb  : regulatorLocation  ⊏⋆ᵣ  locatedat
