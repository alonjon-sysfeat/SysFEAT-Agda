{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Whole Life Class: 
Whole Life Class is the power-type of Whole Life Individual.Examples:. A type of building such as a skycraper.. A type of person such as a philosopher.. A type of activity such as a volcanic eruption.. A type of facility such as a hospital.. A Process Type (Action Process Type) such as the registration process used at the Oackland digital hospital during the COVID-19 pandemic.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.00ae5d3b667038fc where -- ========== Whole Life Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.3492c53e619642ed public -- Class of Bounded Individual

WholeLifeClass : ClassOfClassOfBoundedIndividual
WholeLifeClass = ClassOfBoundedIndividual

--  WholeLifeClass is subTypeOf ClassOfBoundedIndividual
st-00ae5d94667039a8 : WholeLifeClass ⊏ₑ ClassOfBoundedIndividual
st-00ae5d94667039a8 = polySubTypeOf-identity

-- == Relationships =======================
