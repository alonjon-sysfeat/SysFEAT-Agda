{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Data bLOCK: 
A Relational Data bLOCK is a Data Asset used for description of relational data consumed and produced by Business Software Systems.Relational Data bLOCKs range from Relational Schemas to Column Types.They are defined in Relational Dictionary(ies) and managed in Data Catalogs.

Documentation : https://framework.sysfeat.com/pages/7731894d62166495.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7731894d62166495 where -- ========== Relational Data bLOCK

open import Agda.Primitive
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- Physical Data Block

RelationalDatabLOCK : ClassOfBoundedIndividual
RelationalDatabLOCK = BoundedIndividual

--  RelationalDatabLOCK withAspect PhysicalDataBlock
st-7731894d62166495-8f1cad7d68ca9df0 : RelationalDatabLOCK ⊏ₐₑ (PhysicalDataBlock lzero)
st-7731894d62166495-8f1cad7d68ca9df0 = polySubTypeOf-identity


-- == Relations =======================
