{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Quality Policy: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.98159f6b5f682d1e where -- ========== Data Quality Policy

open import Agda.Primitive
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.d7f90fc35f737c24 public -- Data Quality Measure Value
open import SysFEAT.EA.98159fba5f682ded public -- Measurable Data Quality
open import SysFEAT.SOF.d6cd2cea5ab98e5f public -- Information Entity

DataQualityPolicy : ClassOfClassOfBoundedIndividual
DataQualityPolicy = ClassOfBoundedIndividual

--  DataQualityPolicy is subTypeOf Policy
st-76259c6b5f6c88e8 : DataQualityPolicy ⊏ₑ Policy
st-76259c6b5f6c88e8 = polySubTypeOf-identity

-- == Relationships =======================

{- Target Threshold: -}
targetThreshold :  Linkage DataQualityPolicy DataQualityMeasureValue
targetThreshold = make_classOfHolonymy "Target Threshold" "targetThreshold"


{- Dimension: -}
dimension :  Linkage DataQualityPolicy MeasurableDataQuality
dimension = make_classOfHolonymy "Dimension" "dimension"


{- Concerned Information Entity: -}
concernedInformationEntity :  Linkage DataQualityPolicy InformationEntity
concernedInformationEntity = make_classOfHolonymy "Concerned Information Entity" "concernedInformationEntity"

