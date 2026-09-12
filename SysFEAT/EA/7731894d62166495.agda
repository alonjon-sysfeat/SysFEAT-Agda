{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Data bLOCK: 
A Relational Data bLOCK is a Data Asset used for description of relational data consumed and produced by Business Software Systems.Relational Data bLOCKs range from Relational Schemas to Column Types.They are defined in Relational Dictionary(ies) and managed in Data Catalogs.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7731894d62166495 where -- ========== Relational Data bLOCK

open import Agda.Primitive
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- Physical Data Block

RelationalDatabLOCK : ClassOfBoundedIndividual
RelationalDatabLOCK = BoundedIndividual

--  RelationalDatabLOCK withAspect PhysicalDataBlock
st-77318965621677b9 : RelationalDatabLOCK ⊏ₐₑ (PhysicalDataBlock lzero)
st-77318965621677b9 = polySubTypeOf-identity

-- == Relationships =======================
