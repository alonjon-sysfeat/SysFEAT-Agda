{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Container: 
An Architecture Container is a Model Container that packages Asset Blocks used for enterprise architecture descriptions.This includes Information Asset, Processes, Software Systems, Hardware Systems, Organizations, etc.Model Containers are used to split SysFEAT repository content into several independent modules (aka package).They allow virtual partitions of the repository. In particular, Asset Blocks packaged by different Model Containers can have the same name (namespacing).There are two main kinds of Model Container: Enterprise and Library.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb95f1b6855bf64 where -- ========== Architecture Container

open import Agda.Primitive
open import SysFEAT.SOF.0eb95d786855bbd9 public -- Architecture Lexical Scope
open import SysFEAT.SOF.0eb95dce6855be2e public -- Model Container
open import SysFEAT.SOF.0eb960766855c180 public -- Architecture Block Collection
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block

ArchitectureContainer : ∀ (u : Level) → ClassOfMixedOrderEntity u
ArchitectureContainer u = MixedOrderEntity u

--  ArchitectureContainer is subTypeOf ArchitectureLexicalScope
st-0eb95f7b6855c056 : ∀ {u v} → (ArchitectureContainer u) ⊏⋆ₑ (ArchitectureLexicalScope v)
st-0eb95f7b6855c056 = trivialPolySubTypeOfEntity

--  ArchitectureContainer is subTypeOf ModelContainer
st-9397bc2b6877823c : ∀ {u v} → (ArchitectureContainer u) ⊏⋆ₑ (ModelContainer v)
st-9397bc2b6877823c = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Included Architecture Dictionary: -}
includedArchitectureDictionary : ∀ {u v} →  Linkage (ArchitectureContainer u) (ArchitectureContainer v)
includedArchitectureDictionary = make_nestingRelation "Included Architecture Dictionary" "includedArchitectureDictionary"

postulate -- includedArchitectureDictionary is subTypeOf subModelPackage
  st-0f6416aa685987e1-0eb96c446855cb6c  : ∀ {u v} → includedArchitectureDictionary {u} {v}  ⊏⋆ᵣ  subModelPackage

{- Packaged Block Collection: -}
packagedBlockCollection : ∀ {u} →  Linkage (ArchitectureContainer u) ArchitectureBlockCollection
packagedBlockCollection = make_nestingRelation "Packaged Block Collection" "packagedBlockCollection"

postulate -- packagedBlockCollection is subTypeOf nestingRelation
  st-0eb966436855c46e-02a506a968540333  : packagedBlockCollection {u}  ⊏⋆ᵣ  nestingRelation {u} {v}

{- Packaged Asset Block: 
Packaging of Packaged Asset Blocks in Architecture Containers.
-}
packagedAssetBlock : ∀ {u v} →  Linkage (ArchitectureContainer u) (AssetBlock v)
packagedAssetBlock = make_nestingRelation "Packaged Asset Block" "packagedAssetBlock"

postulate -- packagedAssetBlock is subTypeOf packagedModelBlock
  st-9397bbda687781e0-3346b0ad687846e9  : ∀ {u v} → packagedAssetBlock {u} {v}  ⊏⋆ᵣ  packagedModelBlock {u} {v}
postulate -- packagedAssetBlock is subTypeOf scopedArchitectureBlock
  st-9397bbda687781e0-0eb95f9a6855c081  : ∀ {u v} → packagedAssetBlock {u} {v}  ⊏⋆ᵣ  scopedArchitectureBlock {u} {v}

{- Imported Architecture Container: 
The Imported Architecture Container relationship extends the lexical scope of an Architecture Container to Asset Blocks of the imported Architecture Container.
-}
importedArchitectureContainer : ∀ {u v} →  Linkage (ArchitectureContainer u) (ArchitectureContainer v)
importedArchitectureContainer = make_Relation "Imported Architecture Container" "importedArchitectureContainer"

postulate -- importedArchitectureContainer is subTypeOf importedModelContainer
  st-0eb984ce6855d3ca-0eb97ce26855cf57  : ∀ {u v} → importedArchitectureContainer {u} {v}  ⊏⋆ᵣ  importedModelContainer {u} {v}
