{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer Activity: 
A Customer Activity represents specific behavior done by Customers in the context of their work.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8a5c926e5c0d632c where -- ========== Customer Activity

open import Agda.Primitive
open import SysFEAT.EA.08d181af678a2d51 public -- Customer

CustomerActivity : ClassOfClassOfBoundedIndividual
CustomerActivity = ClassOfBoundedIndividual

-- == Relationships =======================

{- Portrayed Customer: 
The customer who job activities (Job-to-be-done, Customer Journey) are described.
-}
portrayedCustomer :  Linkage CustomerActivity Customer
portrayedCustomer = make_classOfHolonymy "Portrayed Customer" "portrayedCustomer"


{- Customer Activity Member: 
Step of a Customer Journey where a Customer experiences offered capability through Touch Points.that can be either a Customer Job Activity or another Customer Journey 
-}
-- Aggregate Member : Customer Activity Member
CustomerActivityMember : ClassOfClassOfIndividual
CustomerActivityMember = ClassOfIndividual

-- Membership relation
membershipOfCustomerActivityMember :  Linkage CustomerActivity CustomerActivityMember
membershipOfCustomerActivityMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfCustomerActivityCustomerActivityMember :  Linkage CustomerActivityMember CustomerActivity
aggregationOfCustomerActivityCustomerActivityMember = aggregationOfBuildingBlock

{- customerActivityMember : derived relation obtained by composing
   membershipOfCustomerActivityMember and aggregationOfCustomerActivityCustomerActivityMember
   It directly links an Customer Activity to the final aggregated CustomerActivity
   hiding the reifying CustomerActivityMember
-}
customerActivityMember : Linkage CustomerActivity CustomerActivity
customerActivityMember = membershipOfCustomerActivityMember  ∘  aggregationOfCustomerActivityCustomerActivityMember
