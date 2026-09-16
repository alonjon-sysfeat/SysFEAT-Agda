{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Human Resource: 
A Human Resource is a Person Type or an Org-Unit Type (type of group of people) capable of purposeful action, decision-making, and problem-solving within an enterprise or organization. As Business Agent Types, Human Resources possess autonomy, adaptability, and the ability to influence outcomes, distinguishing them from unpurposeful entities like Business Systems (software and hardware) or natural resources.

Documentation : https://framework.sysfeat.com/pages/2c93337b67644a6a.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2c93337b67644a6a where -- ========== Human Resource

open import Agda.Primitive
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type
open import SysFEAT.EA.ffdf61506860875a public -- Human Agent Category

HumanResource : ClassOfClassOfBoundedIndividual
HumanResource = ClassOfBoundedIndividual

--  HumanResource is subTypeOf BusinessAgentType
st-2c93337b67644a6a-bcebd31f5491302c : HumanResource ⊏ₑ BusinessAgentType
st-2c93337b67644a6a-bcebd31f5491302c = polySubTypeOf-identity

--  HumanResource is subTypeOf HumanAgentCategory
st-2c93337b67644a6a-ffdf61506860875a : HumanResource ⊏ₑ HumanAgentCategory
st-2c93337b67644a6a-ffdf61506860875a = polySubTypeOf-identity

-- == Relationships =======================
