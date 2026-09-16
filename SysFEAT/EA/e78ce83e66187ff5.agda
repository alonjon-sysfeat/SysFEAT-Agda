{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Department: 
A Department is a Mezzo Organization. It is a an administrative unit in government or business.Examples:- Sales department of  Aircraft corporation  in France;- Finance department of  Oakland digital hospital ;- Logistics Department of  APPCo retail inc .

Documentation : https://framework.sysfeat.com/pages/e78ce83e66187ff5.htm

External references:
  OpenGroup - ArchiMate - Business-Actor: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Actor
  OpenGroup - ArchiMate - Business-Collaboration: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Collaboration
  Russell Ackoff - Transformational leadership - Social System: ../resources/external-references/Ackoff-1987-A-System-view-of-transformational-leadership.pdf#SocialSystem
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e78ce83e66187ff5 where -- ========== Department

open import Agda.Primitive
open import SysFEAT.EA.910196ca550a2ec2 public -- Organization
open import SysFEAT.EA.7c408aa155270eea public -- Department Type

Department : ClassOfBoundedIndividual
Department = BoundedIndividual

--  Department is subTypeOf Organization
st-e78ce83e66187ff5-910196ca550a2ec2 : Department ⊏ₑ Organization
st-e78ce83e66187ff5-910196ca550a2ec2 = polySubTypeOf-identity

-- == Relationships =======================
