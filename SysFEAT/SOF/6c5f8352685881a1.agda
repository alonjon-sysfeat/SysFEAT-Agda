{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Dictionary: 
An Information Dictionary is a Model Package of Information Blocks used to describe an information architecture. This includes:1. Information Domain which groups Information Entitys by unit knowlege required by an Agent to operate during Behavior execution.2. Information Entity which constitute resusable unit of information that can change over time.3. Concept Property which constitue immutable characteristics of Information Entitys.Concrete implementations of Model Packages are Business Dictionary, Logical Data Dictionary, etc.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6c5f8352685881a1 where -- ========== Information Dictionary

open import Agda.Primitive
open import SysFEAT.SOF.6c5f808b68587e49 public -- Information Lexical Scope
open import SysFEAT.SOF.0eb96bc36855ca44 public -- Model Package

InformationDictionary : FirstOrderClass
InformationDictionary = FirstOrderEntity


postulate --  InformationDictionary withAspect InformationLexicalScope
  st-6c5f8359685881cd : InformationDictionary ⊏ₐₑ (InformationLexicalScope lzero)

postulate --  InformationDictionary is subTypeOf ModelPackage
  st-6c5f84dd6858864b : InformationDictionary ⊏ₑ ModelPackage

-- == Relationships =======================

{- Imported Information Dictionary: 
The Imported Information Dictionary relationship extends the Information Lexical Scope of an Information Dictionary to Information Blocks of the imported Information Dictionary.
-}
importedInformationDictionary :  Linkage InformationDictionary InformationDictionary
importedInformationDictionary = make_Relation "Imported Information Dictionary" "importedInformationDictionary"

postulate -- importedInformationDictionary is subTypeOf importedModelContainer
  st-0f64145168598226-0eb97ce26855cf57  : importedInformationDictionary   ⊏⋆ᵣ  importedModelContainer {lzero}
