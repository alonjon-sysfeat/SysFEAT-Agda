{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Procedure: 
A Business Procedure is a Micro  Business Process performed by Organizational Positions of the enterprise. It is usually under the control of a Department Type.

Documentation : https://framework.sysfeat.com/pages/2781d514660b5a48.htm

External references:
  WordNet - Procedure: https://en-word.net/ili/i40766
  ISO 9000 - 3.4.5 Procedure: https://www.iso.org/obp/ui/#iso:std:iso:9000:ed-4:v1:en3.4.5 Procedure
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2781d514660b5a48 where -- ========== Business Procedure

open import Agda.Primitive
open import SysFEAT.EA.57dfc52d550932ef public -- Business Process

BusinessProcedure : ClassOfClassOfBoundedIndividual
BusinessProcedure = ClassOfBoundedIndividual

--  BusinessProcedure is subTypeOf BusinessProcess
st-2781d514660b5a48-57dfc52d550932ef : BusinessProcedure ⊏ₑ BusinessProcess
st-2781d514660b5a48-57dfc52d550932ef = polySubTypeOf-identity


-- == Relations =======================
