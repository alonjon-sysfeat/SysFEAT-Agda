{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Impact Analysis: 
Business Impact Analysis is the process of analysing the impact over time of a disruption on the sub-set of tthe activities of the enterprise.

Documentation : https://framework.sysfeat.com/pages/8dbd9019609b4b86.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8dbd9019609b4b86 where -- ========== Business Impact Analysis

open import Agda.Primitive
open import SysFEAT.SOF.1737b76a5fe28204 public -- Governance Activity
open import SysFEAT.EA.8dbd8f17609b4a70 public -- BCM System
open import SysFEAT.EA.2cff31375eda90bd public -- Process Family

BusinessImpactAnalysis : ClassOfBoundedIndividual
BusinessImpactAnalysis = BoundedIndividual

--  BusinessImpactAnalysis is subTypeOf GovernanceActivity
st-8dbd9019609b4b86-1737b76a5fe28204 : BusinessImpactAnalysis ⊏ₑ GovernanceActivity
st-8dbd9019609b4b86-1737b76a5fe28204 = polySubTypeOf-identity

-- == Relationships =======================

{- Portoflio Scope: -}
portOflioScope :  Linkage BusinessImpactAnalysis BCMSystem
portOflioScope = make_holonymyRelation "Portoflio Scope" "Portoflio Scope"


{- Processs Analyis Scope: -}
processsAnalyisScope :  Linkage BusinessImpactAnalysis ProcessFamily
processsAnalyisScope = make_Relation "Processs Analyis Scope" "Processs Analyis Scope"

