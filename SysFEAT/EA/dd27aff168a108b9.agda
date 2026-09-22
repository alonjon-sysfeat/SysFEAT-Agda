{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology Capability: 
A Software Technology Capability is a Technology Capability offered by Software Technology Systems and aimed at producing Software Technology Outcome Events.Software Technology Capabilitys define WHAT Software Technology Systems can do, They are used to understand whether two types of Software Technology Systems are fundamentally doing the same thing.They are also used in Software Technology ArcOps to identify where there are redundancies in Technology Portfolios.

Documentation : https://framework.sysfeat.com/pages/dd27aff168a108b9.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd27aff168a108b9 where -- ========== Software Technology Capability

open import Agda.Primitive
open import SysFEAT.EA.dd27b08d68a10b12 public -- Technology Capability

SOftwareTechnologyCapability : AssetPropertyType
SOftwareTechnologyCapability = AssetProperty


--  SOftwareTechnologyCapability is subTypeOf TechnologyCapability
st-dd27aff168a108b9-dd27b08d68a10b12 : SOftwareTechnologyCapability ⊏ₑ TechnologyCapability
st-dd27aff168a108b9-dd27b08d68a10b12 = polySubTypeOf-identity


-- == Relations =======================
