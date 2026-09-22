{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operational Incident: 
The incident impacted elements are a subpart of the risks scope. The incident causes and consequences are a subpart of the risks ones. But the incident scope (processes, entities etc.) are not filtered within the scope of the risk connected to the incident, because the link between risk and incident isnt always done. 

Documentation : https://framework.sysfeat.com/pages/0430341c6003d9c9.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0430341c6003d9c9 where -- ========== Operational Incident

open import Agda.Primitive
open import SysFEAT..d059da695ef11294 public -- Incident

OperationalIncident : ClassOfBoundedIndividual
OperationalIncident = BoundedIndividual


--  OperationalIncident is subTypeOf Incident
st-0430341c6003d9c9-d059da695ef11294 : OperationalIncident ⊏ₑ Incident
st-0430341c6003d9c9-d059da695ef11294 = polySubTypeOf-identity


-- == Relations =======================
