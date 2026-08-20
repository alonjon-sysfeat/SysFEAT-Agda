{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Container: 
A Container is a collection of Building Blocks whose existence and meaning are defined by the Container.A Container is both:1. A Lexical Scope: the meaning and usage of a Building Block is only applicable within the context of the Container to which it belongs.2. A universe of discourse: the complete range of Building Blocks that are expressed, assumed, or implied in an architecture domain.Examples: - Container Package- Library- Enterprise
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.0eb93b4268549a66 where -- ========== Container

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5c494685141b5 public -- Block Lexical Scope
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block

Container : ∀ (u : Level) → ClassOfMixedOrderEntity u
Container u = MixedOrderEntity u

--  Container is subTypeOf BlockLexicalScope
st-0eb9430568549edb : ∀ {u v} → (Container u) ⊏⋆ₑ (BlockLexicalScope v)
st-0eb9430568549edb = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Packaged Building Block: -}
packagedBuildingBlock : ∀ {u v} →  Linkage (Container u) (BuildingBlock v)
packagedBuildingBlock = make_nestingRelation "Packaged Building Block" "packagedBuildingBlock"

postulate -- packagedBuildingBlock is subTypeOf scopedBuildingBlock
  st-3346a99968784284-0eb946496854a02e  : ∀ {u v} → packagedBuildingBlock {u} {v}  ⊏⋆ᵣ  scopedBuildingBlock {u} {v}

{- Imported Container: 
The Imported Container relationship extends the Block Lexical Scope of a Containerr to Building Blocksof the imported Container.
-}
importedContainer : ∀ {u v} →  Linkage (Container u) (Container v)
importedContainer = make_Relation "Imported Container" "importedContainer"

postulate -- importedContainer is subTypeOf referenceRelation
  st-0eb94b9b6854a563-23d5398f68511bc1  : ∀ {u v} → importedContainer {u} {v}  ⊏⋆ᵣ  referenceRelation {u} {v}
postulate -- importedContainer is subTypeOf existentialIndependence
  st-0eb94b9b6854a563-cbfcee0c685359a7  : ∀ {u v} → importedContainer {u} {v}  ⊏⋆ᵣ  existentialIndependence {u} {v}
