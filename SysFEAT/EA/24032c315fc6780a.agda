{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Transformation Program: 
A Transformation Program is an Initiative that is a temporary, flexible organisation created to co-ordinate, direct and oversee the implementation of a set of related Projects and Tasks in order to deliver outcomes and benefits related to the organisations strategic objectives.A programme is likely to have a lifespan of several years. During a programme lifecycle, projects are initiated, executed, and closed.  Programmes provide an umbrella under which these projects can be co-ordinated. The programme integrates the projects so that it can deliver an outcome greater than the sum of its parts.Programs are defined upon a given domain (e.g. Business, Information Technology)A program domain gathers all the projects managed from the same perspective in terms of portfolio management decisions. Project Portfolios are therefore also attached to programs; by default, one portfolio of each portfolio type is created when creating a new program.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.24032c315fc6780a where -- ========== Transformation Program

open import Agda.Primitive
open import SysFEAT.EA.05201b936647570a public -- Management Initiative
open import SysFEAT.EA.84c799c1664d8b2f public -- Epic
open import SysFEAT.EA.22ba264367643346 public -- Technology Portfolio Stage
open import SysFEAT.EA.2b5887d05ef07b3b public -- Program Asset

TransformationProgram : ClassOfBoundedIndividual
TransformationProgram = BoundedIndividual

--  TransformationProgram is subTypeOf ManagementInitiative
st-24f828db664756d5 : TransformationProgram ⊏ₑ ManagementInitiative
st-24f828db664756d5 = polySubTypeOf-identity

--  TransformationProgram is subTypeOf Epic
st-693488406005285f : TransformationProgram ⊏ₑ Epic
st-693488406005285f = polySubTypeOf-identity

-- == Relationships =======================

{- Roadmap: -}
roadmap :  Linkage TransformationProgram TechnologyPortfolioStage
roadmap = make_holonymyRelation "Roadmap" "roadmap"


{- Owned Program Block: -}
ownedProgramBlock :  Linkage TransformationProgram ProgramAsset
ownedProgramBlock = make_holonymyRelation "Owned Program Block" "ownedProgramBlock"

postulate -- ownedProgramBlock is subTypeOf packagedInitiativeResource
  st-2b5887fc5ef07c71-01ce058868597974  : ownedProgramBlock   ⊏⋆ᵣ  packagedInitiativeResource  {lzero}
