{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Dictionary: 
A Data Dictionary is a dictionary of Data Blocks used to describe a data architecture. This includes:1. Data Domains,2. Data Entity(ies),3. Data Property(ies).Concrete implementations are Logical Data Dictionary(ies), Relational Dictionary(ies), NoSQL Dictionary(ies).

Documentation : https://framework.sysfeat.com/pages/67d376e36aa45056.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.67d376e36aa45056 where -- ========== Data Dictionary

open import Agda.Primitive
open import SysFEAT.SOF.d745ed256aa38edc public -- Information Dictionary
open import SysFEAT.EA.8f1c937168ca8195 public -- Data Block

DataDictionary : ClassOfIndividual
DataDictionary = Individual

--  DataDictionary is subTypeOf InformationDictionary
st-67d376e36aa45056-d745ed256aa38edc : DataDictionary ⊏ₑ InformationDictionary
st-67d376e36aa45056-d745ed256aa38edc = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Data Asset: -}
packagedDataAsset : ∀ {u} →  Linkage DataDictionary (DataBlock u)
packagedDataAsset = make_nestingRelation "Packaged Data Asset" "Packaged Data Asset"

