{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Project Milesone: 
A Project Milestone defines an intermediate delivery gate in the project lifecycle.Project Deliverables can be associated with a Project Milesone in case they are delivered during the project and not at the end of the project.Note: the association of deliverables to milestone do not affect their object life initialization; the object life should be manually updated accordingly if this is relevant.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.48d4d4c963b699df where -- ========== Project Milesone

open import Agda.Primitive

ProjectMilesone : ClassOfBoundedIndividual
ProjectMilesone = BoundedIndividual


