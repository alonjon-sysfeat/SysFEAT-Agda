{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Quality Indicator: 


Documentation : https://framework.sysfeat.com/pages/003f595c64775717.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.003f595c64775717 where -- ========== Data Quality Indicator

open import Agda.Primitive
open import SysFEAT.SOF.8f46e8eb64b7719a public -- Key Indicator
open import SysFEAT.EA.b90aeac8600e619f public -- Data Assurance Case

DataQualityIndicator : ClassOfBoundedIndividual
DataQualityIndicator = BoundedIndividual


--  DataQualityIndicator is subTypeOf KeyIndicator
st-003f595c64775717-8f46e8eb64b7719a : DataQualityIndicator ⊏ₑ KeyIndicator
st-003f595c64775717-8f46e8eb64b7719a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Monitored Data Assurance Case: -}
-- Aggregate Member : Monitored Data Assurance Case
MonitoredDataAssuranceCase : ClassOfClassOfIndividual
MonitoredDataAssuranceCase = ClassOfIndividual


-- Membership relation
membershipOfMonitoredDataAssuranceCase :  Linkage DataQualityIndicator MonitoredDataAssuranceCase
membershipOfMonitoredDataAssuranceCase = make_upwardNestingRelation "monitoredDataAssuranceCase membership" "nested monitoredDataAssuranceCase"

-- Aggregation relation
aggregationOfDataAssuranceCaseMonitoredDataAssuranceCase :  Linkage MonitoredDataAssuranceCase DataAssuranceCase
aggregationOfDataAssuranceCaseMonitoredDataAssuranceCase = make_Relation "DataAssuranceCase aggregation" "aggregated DataAssuranceCase"

{- monitoredDataAssuranceCase : derived relation obtained by composing
   membershipOfMonitoredDataAssuranceCase and aggregationOfDataAssuranceCaseMonitoredDataAssuranceCase
   It directly links an Data Quality Indicator to the final aggregated DataAssuranceCase
   hiding the reifying MonitoredDataAssuranceCase
-}
monitoredDataAssuranceCase : Linkage DataQualityIndicator DataAssuranceCase
monitoredDataAssuranceCase = membershipOfMonitoredDataAssuranceCase  ∘  aggregationOfDataAssuranceCaseMonitoredDataAssuranceCase


