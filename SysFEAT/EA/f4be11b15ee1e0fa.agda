{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

System of Resources: 
A System of Resources is a Mezzo Capability Configuration that combines Org-Unit Types, Concrete Hardware Systems and Business Software Systems to provide a Business Capability.Examples:- Factory (with workers), - Data center (with opetators)- Hospital (with doctors and nurses)- Configured aircraft carrier (with crew),- Configured rescue ship (with rescue team).

Documentation : https://framework.sysfeat.com/pages/f4be11b15ee1e0fa.htm

External references:
  Wikipedia - System of systems: https://en.wikipedia.org/wiki/System_of_systems
  Systems_of_Systems_(SoS): https://www.sebokwiki.org/wikihttps://www.sebokwiki.org/wiki/Systems_of_Systems_(SoS)
  DAU - Glossary - System of Systems: https://www.dau.edu/glossary/system-systems
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be11b15ee1e0fa where -- ========== System of Resources

open import Agda.Primitive
open import SysFEAT.EA.d1600c7062e093eb public -- Capability Configuration

SystemOfResources : ClassOfClassOfBoundedIndividual
SystemOfResources = ClassOfBoundedIndividual

--  SystemOfResources is subTypeOf CapabilityConfiguration
st-f4be11b15ee1e0fa-d1600c7062e093eb : SystemOfResources ⊏ₑ CapabilityConfiguration
st-f4be11b15ee1e0fa-d1600c7062e093eb = polySubTypeOf-identity

-- == Relationships =======================
