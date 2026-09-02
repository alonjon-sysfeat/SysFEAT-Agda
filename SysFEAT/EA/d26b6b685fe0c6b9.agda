{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Project Portfolio: 
A Project Portfolio gathers all the projects of a given Project Domain in the defined project state (Demands, Candidate Projects, Ongoing Projects).In a Portfolio, Projects can be assessed and compared against several criteria:- Projects Criteria: these are derived from projects information (e.g. costs) or from project qualitative assessment (e.g. strategic alignment level, business value level)- Portfolio criteria: these are additional criteria which can be defined at portfolio level on top of the projects criteria (ex : score, priority, rank)The project workflow can be actioned from the project portfolio lines.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d26b6b685fe0c6b9 where -- ========== Project Portfolio

open import Agda.Primitive
open import SysFEAT.EA.2b5887d05ef07b3b public -- Program Asset
open import SysFEAT.EA.91be97ff54882d9f public -- Project

ProjectPortfolio : ClassOfBoundedIndividual
ProjectPortfolio = BoundedIndividual

--  ProjectPortfolio is subTypeOf ProgramAsset
st-d26b6b725fe0c724 : ProjectPortfolio ⊏ₑ ProgramAsset
st-d26b6b725fe0c724 = polySubTypeOf-identity

-- == Relationships =======================

{- Portfolio Line: 
A Project Portfolio line is defined to enable the assessment of a Project in a given Portfolio.It is related to assessment criteria defined at the portfolio level, and its corresponding score.
-}
-- Aggregate Member : Portfolio Line
PortfolioLine : ClassOfOrderedEntity (lsuc(lzero))
PortfolioLine = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfPortfolioLine :  Linkage ProjectPortfolio PortfolioLine
membershipOfPortfolioLine = membershipOfAggregateMember

-- Aggregation relation
aggregationOfProjectPortfolioLine :  Linkage PortfolioLine Project
aggregationOfProjectPortfolioLine = aggregationOfBuildingBlock

{- portfolioLine : derived relation obtained by composing
   membershipOfPortfolioLine and aggregationOfProjectPortfolioLine
   It directly links an Project Portfolio to the final aggregated Project
   hiding the reifying PortfolioLine
-}
portfolioLine : Linkage ProjectPortfolio Project
portfolioLine = membershipOfPortfolioLine  ∘  aggregationOfProjectPortfolioLine
