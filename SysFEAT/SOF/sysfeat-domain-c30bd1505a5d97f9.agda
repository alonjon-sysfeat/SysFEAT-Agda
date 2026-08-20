{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Assets: 
The Architecture Assets domain defines top level constructs used in enterprise architecting: Asset Types, Asset Category(ies), Asset Property(ies).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.SOF.sysfeat-domain-c30bd1505a5d97f9 where -- ========== Architecture Assets

open import SysFEAT.SOF.sysfeat-domain-02af0a4b5a182417 public -- System Operating Framework - SOF
open import SysFEAT.UpperOntology.sysfeat-domain-e278fa2568f06541 public -- Reflexive Knowledge Graph
open import SysFEAT.SOF.sysfeat-domain-ab6f7f85681a69f1 public -- Architecture Packages
open import SysFEAT.SOF.sysfeat-domain-af4db12d62993434 public -- Model Block Packaging
open import SysFEAT.UpperOntology.sysfeat-domain-fb342c5665561f29 public -- 4D Composite Knowledge Graph
open import SysFEAT.UpperOntology.sysfeat-domain-36166b8c6157b6b4 public -- Compositionality

open import SysFEAT.EA.362ff8615b3c48df public -- Period
open import SysFEAT.SOF.8d5e986f552e28d5 public -- Location
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type
open import SysFEAT.SOF.ebcfaeac5ad76ed7 public -- Individual Asset
open import SysFEAT.SOF.515c6a856893324e public -- Asset Property
open import SysFEAT.SOF.24f72ea26a0f5029 public -- Family of Category
open import SysFEAT.SOF.f696240c6a0f9ea4 public -- Category Partition
open import SysFEAT.SOF.f69620466a0f9c2f public -- Asset Category
open import SysFEAT.SOF.3a2f3b516796620e public -- Whole Life Asset
open import SysFEAT.SOF.3a2f3c44679664b5 public -- Asset State
open import SysFEAT.SOF.6cfb6ef26a0f15e4 public -- Condition Category
open import SysFEAT.SOF.6f9c701b6a0f2d87 public -- Measurement Type
open import SysFEAT.SOF.6f9c71356a0f3116 public -- Family of Measurement
open import SysFEAT.SOF.6f9c78916a0f34e5 public -- Environmental Condition Type
open import SysFEAT.SOF.83f88fd567406e53 public -- Asset Property Type
open import SysFEAT.SOF.e13ce1cd678f1111 public -- Whole Life Asset Type
open import SysFEAT.SOF.e13ce269678f11ed public -- Asset State Type
open import SysFEAT.SOF.21ed2aa6689c12ba public -- Measure Property
open import SysFEAT.SOF.21ed58f3689c19f4 public -- Environmental Property
open import SysFEAT.SOF.21ed5bf7689c1ca3 public -- Set of Condition Properties
open import SysFEAT.SOF.21ed231d689c0679 public -- Condition Property
open import SysFEAT.SOF.ef5df90463212593 public -- Location Type
open import SysFEAT.SOF.362ff9085b3c4933 public -- Period Type
open import SysFEAT.SOF.e53af71366e37de2 public -- Condition Property Type
open import SysFEAT.SOF.e53af74b66e37e5d public -- Measure Property Type
open import SysFEAT.SOF.e53af85b66e37f78 public -- Environmental Property Type
open import SysFEAT.SOF.e53af87666e37fcd public -- Set of Environmental Condition Type
