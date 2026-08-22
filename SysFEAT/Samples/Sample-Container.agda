{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.Samples.Sample-Container where -- ==================== Container

open import Agda.Primitive
open import SysFEAT.UpperOntology.f41700e868ee0f29 public -- First Order Entity
open import SysFEAT.UpperOntology.a39aaa7f685e5118 public -- Lexical Scope

-- ============================================================
-- 1. Building Block
-- ============================================================
BuildingBlock : (u : Level) → ClassOfMixedOrderEntity u
BuildingBlock u = MixedOrderEntity u

postulate -- BuildingBlock is subType of MixedOrderEntity
  6bf1a7126859cd3f : ∀ {u v} → (BuildingBlock u) ⊏⋆ₑ (MixedOrderEntity v)

-- ============================================================
-- 2. Block Collection
-- ============================================================
BlockCollection : (u : Level) → ClassOfMixedOrderEntity u
BlockCollection u = MixedOrderEntity u

postulate -- BlockCollection is subType of MixedOrderEntity
  6bf1a76f6859ce2c : ∀ {u v} → (BlockCollection u) ⊏⋆ₑ (MixedOrderEntity v)

-- groupedBuildingBlock
groupedBuildingBlock : ∀ {u v} → Linkage (BlockCollection u) (BuildingBlock v)
groupedBuildingBlock {u} {v} = make_Relation "Grouping of Building Blocks" "Grouped Building Block"

postulate 
  groupedBuildingBlock-isSubRelOf-ExistentialIndependence : ∀ {u v} → (groupedBuildingBlock {u} {v}) ⊏⋆ᵣ (existentialIndependence {u} {v})

-- ============================================================
-- 3. Block Lexical Scope
-- ============================================================
--postulate
BlockLexicalScope : (u : Level) → ClassOfMixedOrderEntity u
BlockLexicalScope u = MixedOrderEntity u

postulate -- BlockLexicalScope is subType of LexicalScope
  a39aaab30685e523f : ∀ {u v} → (BlockLexicalScope u) ⊏⋆ₑ (LexicalScope v)

-- scoping of Building Blocks under a BlockLexicalScope
scopedBuildingBlock : ∀ {u v} → Linkage (BlockLexicalScope u) (BuildingBlock v)
scopedBuildingBlock = make_nestingRelation "Scoping of Building Blocks" "Scoped Building Block"

-- ============================================================
-- 4. Container 
-- ============================================================
Container : (u : Level) → ClassOfMixedOrderEntity u
Container u = MixedOrderEntity u

postulate -- Container is subType of BlockLexicalScope
  0eb9430568549edb : ∀ {u v} → (Container u) ⊏⋆ₑ (BlockLexicalScope v)

packagedBuildingBlock : ∀ {u v} → Linkage (Container u) (BuildingBlock v)
packagedBuildingBlock = make_nestingRelation "Packaging" "Packaged Building Block"

-- ============================================================
-- 5. Container Package (M1 Level)
-- ============================================================
ContainerPackage : FirstOrderClass
ContainerPackage = FirstOrderEntity

postulate --ContainerPackage-isSubTypeOf-FirstOrder Entity
  e2780fbf68f17d72 : ContainerPackage ⊏ₑ FirstOrderEntity

postulate -- ContainerPackage-withAspect-Container
   0eb947626854a167 : ContainerPackage ⊏ₐₑ Container (lsuc(lzero))

-- == Relationships =======================

{- Sub-Container: 
Nesting Relation that asserts the existence of a given Sub-Container Package in the context of a parent Container Package.
-}
subContainer :  Linkage ContainerPackage ContainerPackage
subContainer = make_nestingRelation  "Sub-Container" "subContainer"

postulate -- subContainer is subTypeOf nestingRelation
  st-0eb9824a6855d23d-02a506a968540333  : subContainer  ⊏⋆ᵣ  nestingRelation {lzero} {lzero}

-- ============================================================
-- 6. Annotations (Fractal Approach)
-- ============================================================
AnnotationBlock : FirstOrderClass
AnnotationBlock = FirstOrderEntity

postulate -- Annotation-withAspect-BuildingBlock
  0eb97ae96855ccf8 : AnnotationBlock ⊏ₐₑ Container (lsuc(lzero))

annotatedElement : ∀ {u} → Linkage AnnotationBlock  (ClassOfElement u)
annotatedElement = make_Relation "Annotation" "Annotated Element"

postulate -- Annotation is subType of ExistencialDependency
  3346bf1a68784fce : annotatedElement {lzero} ⊏⋆ᵣ existentialDependency {lzero} {lzero}

-- ============================================================
-- 7. Packaging of Model Building Blocks
-- ============================================================
ModelBlock : (u : Level) → ClassOfMixedOrderEntity u
ModelBlock u = MixedOrderEntity u

postulate -- ModelBlock is subType of MixedOrderEntity
  ModelBlock-isSubTypeOf-BuildingBlock : ∀ {u v} → (ModelBlock u) ⊏⋆ₑ (BuildingBlock v)

ModelBlockLexicalScope : (u : Level) → ClassOfMixedOrderEntity u
ModelBlockLexicalScope u = MixedOrderEntity u

postulate -- ModelBlockLexicalScope is subType of LexicalScope
  ModelBlockLexicalScope-isSubTypeOf-BlockLexicalScope : ∀ {u v} → (ModelBlockLexicalScope u) ⊏⋆ₑ  (BlockLexicalScope v)

packagedModelBlock : ∀ {u v} → Linkage  (ModelBlockLexicalScope u) (ModelBlock v)
packagedModelBlock = make_nestingRelation "Model Packaging" "Packaged Model Block"

postulate -- packagedModelBlock-isSubRelOf-packagedBuildingBlock
  3346bd1368784df1 : ∀ {u v} → (packagedModelBlock {u} {v}) ⊏⋆ᵣ (packagedBuildingBlock {u} {v})


-- ============================================================
-- 8. Sample (M0 Level - Généré par EA)
-- ============================================================
postulate
  -- 1. Les Nœuds Physiques
  myPackage : FirstOrderEntity
  myPackage-inst : myPackage ∷ₑ ContainerPackage
  
  myBlock : FirstOrderEntity
  myBlock-inst : myBlock ∷ₑ (BuildingBlock lzero)

  myBlockPackaging : myPackage —⟨ packagedBuildingBlock ⟩→ myBlock

