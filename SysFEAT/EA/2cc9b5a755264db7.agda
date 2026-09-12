{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Driver Assessment: 
A Driver Assessment is a kind of Assessment which is motivated by a Stakeholder Driver.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2cc9b5a755264db7 where -- ========== Driver Assessment

open import Agda.Primitive
open import SysFEAT.SOF.3b539cbb551e4c2a public -- Assessment
open import SysFEAT.EA.bcebd0565491287e public -- Driver

DriverAssessment : ClassOfBoundedIndividual
DriverAssessment = BoundedIndividual

--  DriverAssessment is subTypeOf Assessment
st-2cc9b5af55264e30 : DriverAssessment ⊏ₑ Assessment
st-2cc9b5af55264e30 = polySubTypeOf-identity

-- == Relationships =======================

{- assessment motivation: 
Driver .which motivates an Driver Assessment .
-}
assessmentmotivation :  Linkage DriverAssessment Driver
assessmentmotivation = make_holonymyRelation "assessment motivation" "assessmentmotivation"

