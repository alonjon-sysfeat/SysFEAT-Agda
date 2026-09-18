{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Functional Asset and Operating Constraints: 
The Functional Asset and Operating Constraints domain defines  Directives and Behavioral Rules that constrain enterprise structures (Agent Types structure) and Behavior Types.

Documentation : https://framework.sysfeat.com/pages/02f70fdc600f4179.htm

External references:
  OMG - BMM - Directive: https://www.omg.org/spec/BMM/1.3/PDF#page=41
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.SOF.sysfeat-domain-02f70fdc600f4179 where -- ========== Functional Asset and Operating Constraints

open import SysFEAT.SOF.sysfeat-domain-ab6f7f85681a69f1 public -- Architecture Packages
open import SysFEAT.UpperOntology.sysfeat-domain-fb342c5665561f29 public -- 4D Composite Knowledge Graph
open import SysFEAT.UpperOntology.sysfeat-domain-36166b8c6157b6b4 public -- Compositionality
open import SysFEAT.SOF.sysfeat-domain-c30bd1505a5d97f9 public -- Architecture Assets

open import SysFEAT.SOF.515c6b23689335c3 public -- Directive
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework
open import SysFEAT.SOF.952ea6c467285821 public -- Policy Category
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.SOF.0e55206a66f11ec5 public -- Risk Type
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.SOF.190c74f868966584 public -- Behavioral Rule
open import SysFEAT.SOF.9397c3d86877842f public -- Policy Asset
