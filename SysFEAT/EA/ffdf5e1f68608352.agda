{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software System Category: 
A Software System Category is an intangible, logic-based Artifact,  designed to perform tasks, process information, or enable control. It exists as code, data, or digital instructions and requires a computational medium to execute.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ffdf5e1f68608352 where -- ========== Software System Category

open import Agda.Primitive
open import SysFEAT.EA.ffdf5eb7686083b4 public -- Artifact
open import SysFEAT.EA.c80afd2f6784305d public -- Intangible Resource Agent

SOftwareSystemCategory : ClassOfClassOfBoundedIndividual
SOftwareSystemCategory = ClassOfBoundedIndividual

postulate --  SOftwareSystemCategory is subTypeOf Artifact
  st-ffdf60706860861d : SOftwareSystemCategory ⊏ₑ Artifact

postulate --  SOftwareSystemCategory is subTypeOf IntangibleResourceAgent
  st-340f510468621250 : SOftwareSystemCategory ⊏ₑ IntangibleResourceAgent

-- == Relationships =======================
