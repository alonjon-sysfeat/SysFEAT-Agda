{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Software Interface: 
An Physical Software Interface is a physical specification of an Application Interface to which it adds the following physical characteristics:1) The software communication protocol which defines the format of the data, the procedures for error handling, and the protocols for data transfer. Examples of software communication protocols include HTTP, SOAP, gRPC, 2) Potential specific target port number.3) Optional restrictions on source port number to use .4) Transport protocol (TCP/UDP).Physical Software Interfaces can also represent lower lever APIs supported by Software Technology Systems such as DHCP, SMTP, IMAP, LDAP.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.624e6ac55ed972a7 where -- ========== Physical Software Interface

open import Agda.Primitive
open import SysFEAT.SOF.24ae31b55ed1c66d public -- Service Interface

PhysicalSOftwareInterface : ClassOfClassOfIndividual
PhysicalSOftwareInterface = ClassOfIndividual

--  PhysicalSOftwareInterface is subTypeOf ServiceInterface
st-70ba08ae642364ed : PhysicalSOftwareInterface ⊏ₑ ServiceInterface
st-70ba08ae642364ed = polySubTypeOf-identity

-- == Relationships =======================
