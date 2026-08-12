{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Key Indicator: 
A Key Indicator is a collection of Measurement of Architecture Property regarding the valuation, over time, of a Measure Property Type that qualifies a specific Asset Block.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.8f46e8eb64b7719a where -- ========== Key Indicator

open import Agda.Primitive
open import SysFEAT.SOF.173706265fe3f332 public -- Measurement Instrument
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.3b1bc7e968cdac60 public -- Measurement Value

KeyIndicator : ClassOfBoundedIndividual
KeyIndicator = BoundedIndividual

postulate --  KeyIndicator is subTypeOf MeasurementInstrument
  st-8f46e90164b771f3 : KeyIndicator ⊏ₑ MeasurementInstrument

-- == Relationships =======================

{- Measured Asset: 
The Asset Block that is the subject of a measurement.
-}
measuredAsset : ∀ {u} →  Linkage KeyIndicator (AssetBlock u)
measuredAsset = make_Relation "Measured Asset" "measuredAsset"

postulate -- measuredAsset is subTypeOf holonymyRelation
  st-6bf1872268599564-c2f2c6ce66e90be7  : measuredAsset  {lzero}  ⊏⋆ᵣ  holonymyRelation 

{- Measurement: 
A Measurement is the result of a measurement activity, for a given Asset Block in the context of a Key Indicator.Measurements are Hierarchical Member, so they nest there referenced Measurement Value.
-}
-- Aggregate Member : Measurement
Measurement : ClassOfClassOfIndividual
Measurement = ClassOfIndividual

-- Membership relation
membershipOfMeasurement :  Linkage KeyIndicator Measurement
membershipOfMeasurement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfMeasurementValueMeasurement :  Linkage Measurement MeasurementValue
aggregationOfMeasurementValueMeasurement = aggregationOfBuildingBlock

{- measurement : derived relation obtained by composing
   membershipOfMeasurement and aggregationOfMeasurementValueMeasurement
   It directly links an Key Indicator to the final aggregated MeasurementValue
   hiding the reifying Measurement
-}
measurement : Linkage KeyIndicator MeasurementValue
measurement = membershipOfMeasurement  ∘  aggregationOfMeasurementValueMeasurement
