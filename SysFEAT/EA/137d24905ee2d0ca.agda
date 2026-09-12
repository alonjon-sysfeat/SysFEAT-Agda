{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Table View: 
A Table View is a virtual table based on the result-set of an SQL statement. A Table View contains rows and columns, just like a real Table. 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.137d24905ee2d0ca where -- ========== Table View

open import Agda.Primitive
open import SysFEAT.EA.362f3ca45b3b234b public -- Relational Entity

TableView : ClassOfClassOfBoundedIndividual
TableView = ClassOfBoundedIndividual

--  TableView is subTypeOf RelationalEntity
st-137d24975ee2d1a3 : TableView ⊏ₑ RelationalEntity
st-137d24975ee2d1a3 = polySubTypeOf-identity

-- == Relationships =======================
