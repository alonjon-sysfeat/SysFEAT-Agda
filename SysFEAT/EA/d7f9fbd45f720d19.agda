{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Control Execution: 
Execution dun data control effectué dans le cadre dun data catalog.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d7f9fbd45f720d19 where -- ========== Data Control Execution

open import Agda.Primitive
open import SysFEAT.EA.b90ac213600e39bb public -- Data Governance Block
open import SysFEAT.SOF.1737b76a5fe28204 public -- Governance Activity
open import SysFEAT.EA.003f595c64775717 public -- Data Quality Indicator
open import SysFEAT.EA.d7f9fc7b5f720e1f public -- Data Issue
open import SysFEAT.EA.b90aeac8600e619f public -- Data Assurance Case

DataControlExecution : ClassOfBoundedIndividual
DataControlExecution = BoundedIndividual

--  DataControlExecution is subTypeOf DataGovernanceBlock
st-02f7096b600f9fa7 : DataControlExecution ⊏ₑ DataGovernanceBlock
st-02f7096b600f9fa7 = polySubTypeOf-identity

--  DataControlExecution is subTypeOf GovernanceActivity
st-d7f90bc15f737111 : DataControlExecution ⊏ₑ GovernanceActivity
st-d7f90bc15f737111 = polySubTypeOf-identity

-- == Relationships =======================

{- Control Result: -}
controlResult :  Linkage DataControlExecution DataQualityIndicator
controlResult = make_holonymyRelation "Control Result" "controlResult"


{- Identified Data Issue: -}
identifiedDataIssue :  Linkage DataControlExecution DataIssue
identifiedDataIssue = make_holonymyRelation "Identified Data Issue" "identifiedDataIssue"


{- Tested Assurance Case: -}
testedAssuranceCase :  Linkage DataControlExecution DataAssuranceCase
testedAssuranceCase = make_Relation "Tested Assurance Case" "testedAssuranceCase"

