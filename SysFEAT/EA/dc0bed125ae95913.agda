{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

DPIA: 
A data protection impact assessment (DPIA) is a privacy-related impact assessment whose objective is to identify and analyse how data privacy might be affected by certain actions or activities.

Documentation : https://framework.sysfeat.com/pages/dc0bed125ae95913.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dc0bed125ae95913 where -- ========== DPIA

open import Agda.Primitive
open import SysFEAT.EA.8a9f9fe55ee0a603 public -- Privacy Assessment

DPIA : ClassOfBoundedIndividual
DPIA = BoundedIndividual


--  DPIA is subTypeOf PrivacyAssessment
st-dc0bed125ae95913-8a9f9fe55ee0a603 : DPIA ⊏ₑ PrivacyAssessment
st-dc0bed125ae95913-8a9f9fe55ee0a603 = polySubTypeOf-identity


-- == Relations =======================
