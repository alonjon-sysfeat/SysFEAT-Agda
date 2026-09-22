{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Issue: 
An issue is an event or difficulty encountered in the context of a business process, application or enterpise strategy. Issues are processed within the framework of projects as a function of objectives aiming at their resolution.  

Documentation : https://framework.sysfeat.com/pages/d7f9fc7b5f720e1f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d7f9fc7b5f720e1f where -- ========== Data Issue

open import Agda.Primitive
open import SysFEAT..d059da695ef11294 public -- Incident
open import SysFEAT.EA.b90ac213600e39bb public -- Data Governance Block

DataIssue : ClassOfBoundedIndividual
DataIssue = BoundedIndividual


--  DataIssue is subTypeOf Incident
st-d7f9fc7b5f720e1f-d059da695ef11294 : DataIssue ⊏ₑ Incident
st-d7f9fc7b5f720e1f-d059da695ef11294 = polySubTypeOf-identity

--  DataIssue is subTypeOf DataGovernanceBlock
st-d7f9fc7b5f720e1f-b90ac213600e39bb : DataIssue ⊏ₑ DataGovernanceBlock
st-d7f9fc7b5f720e1f-b90ac213600e39bb = polySubTypeOf-identity


-- == Relations =======================
