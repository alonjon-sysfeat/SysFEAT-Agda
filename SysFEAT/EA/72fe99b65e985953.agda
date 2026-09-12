{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Processor: 
A Data Processor is the collection and manipulation of items of data to produce meaningful information.In this sense it can be considered a subset of information processing, the change (processing) of information in any manner detectable by an observer.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.72fe99b65e985953 where -- ========== Data Processor

open import Agda.Primitive
open import SysFEAT.EA.44226d6561819b50 public -- Data Assurance Instrument
open import SysFEAT.EA.c195014a5fc19153 public -- Data Processing Category

DataProcessor : ClassOfClassOfBoundedIndividual
DataProcessor = ClassOfBoundedIndividual

--  DataProcessor is subTypeOf DataAssuranceInstrument
st-36420c59600802de : DataProcessor ⊏⋆ₑ DataAssuranceInstrument
st-36420c59600802de = polySubTypeOf-identity

-- == Relationships =======================

{- Data Processing Category: -}
dataProcessingCategory :  Linkage DataProcessor DataProcessingCategory
dataProcessingCategory = make_classOfHolonymy "Data Processing Category" "dataProcessingCategory"

