{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Capability Configuration: 
An Individual Capability Configuration is an Individual Business Agent combines Org-Units and Business Systems along with networking capabilities in order to provide Business Capability(ies).There are two levels of granularity of Capability Configurations: System of Systems and System of Resources.

Documentation : https://framework.sysfeat.com/pages/c80a3f9d67859211.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a3f9d67859211 where -- ========== Individual Capability Configuration

open import Agda.Primitive
open import SysFEAT.EA.66f8685a620b1440 public -- Individual Business Agent
open import SysFEAT.EA.3b1b936468cd8851 public -- Individual Resource Agent Configuration
open import SysFEAT.EA.d1600c7062e093eb public -- Capability Configuration

IndividualCapabilityConfiguration : ClassOfBoundedIndividual
IndividualCapabilityConfiguration = BoundedIndividual

--  IndividualCapabilityConfiguration is subTypeOf IndividualBusinessAgent
st-c80a3f9d67859211-66f8685a620b1440 : IndividualCapabilityConfiguration ⊏ₑ IndividualBusinessAgent
st-c80a3f9d67859211-66f8685a620b1440 = polySubTypeOf-identity

--  IndividualCapabilityConfiguration is subTypeOf IndividualResourceAgentConfiguration
st-c80a3f9d67859211-3b1b936468cd8851 : IndividualCapabilityConfiguration ⊏ₑ IndividualResourceAgentConfiguration
st-c80a3f9d67859211-3b1b936468cd8851 = polySubTypeOf-identity

-- == Relationships =======================

{- Configuration Type: -}
configurationType :  Linkage IndividualCapabilityConfiguration CapabilityConfiguration
configurationType = make_instanceOf "Configuration Type" "Configuration Type"

