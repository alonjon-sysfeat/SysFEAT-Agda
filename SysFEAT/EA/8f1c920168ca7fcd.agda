{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Dictionary: 
A Data Dictionary is a dictionary of Physical Data Blocks used to describe a data architecture. This includes:1. Data Domains,2. Data Entity(ies),3. Data Property(ies).Concrete implementations are Logical Data Dictionary(ies), Relational Dictionary(ies), NoSQL Dictionary(ies).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1c920168ca7fcd where -- ========== Data Dictionary

open import Agda.Primitive
open import SysFEAT.SOF.6c5f8352685881a1 public -- Information Dictionary
open import SysFEAT.EA.8f1c937168ca8195 public -- Data Block

DataDictionary : FirstOrderClass
DataDictionary = FirstOrderEntity


--  DataDictionary is subTypeOf InformationDictionary
st-82c3b8c15fdcbdaa : DataDictionary ⊏ₑ InformationDictionary
st-82c3b8c15fdcbdaa = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged Data Asset: -}
packagedDataAsset : ∀ {u} →  Linkage DataDictionary (DataBlock u)
packagedDataAsset = make_nestingRelation "Packaged Data Asset" "packagedDataAsset"

