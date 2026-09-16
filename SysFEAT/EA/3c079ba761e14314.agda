{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Stored Procedure: 
A Stored Procedure is a is a subroutine available to applications that access a relational database management system (RDBMS). It is a kind of Resource Process handled by RDBMS.

Documentation : https://framework.sysfeat.com/pages/3c079ba761e14314.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3c079ba761e14314 where -- ========== Stored Procedure

open import Agda.Primitive
open import SysFEAT.EA.7731894d62166495 public -- Relational Data bLOCK
open import SysFEAT.EA.362f3ca45b3b234b public -- Relational Entity

StoredProcedure : ClassOfClassOfBoundedIndividual
StoredProcedure = ClassOfBoundedIndividual

--  StoredProcedure is subTypeOf RelationalDatabLOCK
st-3c079ba761e14314-7731894d62166495 : StoredProcedure ⊏⋆ₑ RelationalDatabLOCK
st-3c079ba761e14314-7731894d62166495 = polySubTypeOf-identity

-- == Relationships =======================

{- Referenced Entity: -}
referencedEntity :  Linkage StoredProcedure RelationalEntity
referencedEntity = make_classOfHolonymy "Referenced Entity" "Referenced Entity"

