{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Dictionary: 
An Information Dictionary is a Model Package of Information Blocks used to describe an information architecture. This includes:1. Information Domain which groups Information Entitys by unit knowlege required by an Agent to operate during Behavior execution.2. Information Entity which constitute resusable unit of information that can change over time.3. Concept Property which constitue immutable characteristics of Information Entitys.Concrete implementations of Information Dictionarys are Business Dictionary, Logical Data Dictionary, etc.

Documentation : https://framework.sysfeat.com/pages/d745ed256aa38edc.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d745ed256aa38edc where -- ========== Information Dictionary

open import Agda.Primitive
open import SysFEAT.SOF.d745dbaa6aa3840b public -- Model Package
open import SysFEAT.SOF.6c5f808b68587e49 public -- Information Lexical Scope

InformationDictionary : ClassOfIndividual
InformationDictionary = Individual

--  InformationDictionary is subTypeOf ModelPackage
st-d745ed496aa38f61 : InformationDictionary ⊏ₑ ModelPackage
st-d745ed496aa38f61 = polySubTypeOf-identity

--  InformationDictionary withAspect InformationLexicalScope
st-d745ed536aa38f89 : InformationDictionary ⊏ₐₑ (InformationLexicalScope lzero)
st-d745ed536aa38f89 = polySubTypeOf-identity

-- == Relationships =======================

{- Imported Information Dictionary: 
The Imported Information Dictionary relationship extends the Information Lexical Scope of an Information Dictionary to Information Blocks of the imported Information Dictionary.
-}
importedInformationDictionary :  Linkage InformationDictionary InformationDictionary
importedInformationDictionary = make_Relation "Imported Information Dictionary" "Imported Information Dictionary"

postulate -- importedInformationDictionary is subTypeOf importedModelContainer
  st-0f64145168598226-0eb97ce26855cf57  : importedInformationDictionary   ⊏⋆ᵣ  importedModelContainer {lzero}
