{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Processing Activity: 
Any operation or set of operations performed upon personal data, whether or not by automatic means, such as collection, recording, organization, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, blocking, erasure or destruction.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.16e319be5bf83cb9 where -- ========== Processing Activity

open import Agda.Primitive
open import SysFEAT.EA.426a57325aeb3d76 public -- Privacy Processing
open import SysFEAT.EA.258c68065fd254de public -- Transfer Safe Guard
open import SysFEAT.EA.57dfc52d550932ef public -- Business Process
open import SysFEAT.EA.bcebd8e9549144db public -- Application

ProcessingActivity : ClassOfClassOfBoundedIndividual
ProcessingActivity = ClassOfBoundedIndividual

--  ProcessingActivity is subTypeOf PrivacyProcessing
st-16e319d55bf83ce4 : ProcessingActivity ⊏ₑ PrivacyProcessing
st-16e319d55bf83ce4 = polySubTypeOf-identity

-- == Relationships =======================

{- Transfer Safe Guard: -}
-- Aggregate Member : Transfer Safe Guard
TransferSafeGuard : ClassOfClassOfIndividual
TransferSafeGuard = ClassOfIndividual

-- Membership relation
1B0468F869F8558C :  Linkage ProcessingActivity TransferSafeGuard
1B0468F869F8558C = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTransferSafeGuardTransferSafeGuard :  Linkage TransferSafeGuard TransferSafeGuard
aggregationOfTransferSafeGuardTransferSafeGuard = aggregationOfBuildingBlock

{- transferSafeGuard : derived relation obtained by composing
   1B0468F869F8558C and aggregationOfTransferSafeGuardTransferSafeGuard
   It directly links an Processing Activity to the final aggregated TransferSafeGuard
   hiding the reifying TransferSafeGuard
-}
transferSafeGuard : Linkage ProcessingActivity TransferSafeGuard
transferSafeGuard = 1B0468F869F8558C  ∘  aggregationOfTransferSafeGuardTransferSafeGuard

{- Business Processing Activity: 
Any  human activity which, for a given purpose of the enterprise, manipulates personal data, including collection, use, recording, etc.
-}
-- Aggregate Member : Business Processing Activity
BusinessProcessingActivity : ClassOfClassOfIndividual
BusinessProcessingActivity = ClassOfIndividual

-- Membership relation
membershipOfBusinessProcessingActivity :  Linkage ProcessingActivity BusinessProcessingActivity
membershipOfBusinessProcessingActivity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessProcessBusinessProcessingActivity :  Linkage BusinessProcessingActivity BusinessProcess
aggregationOfBusinessProcessBusinessProcessingActivity = aggregationOfBuildingBlock

{- businessProcessingActivity : derived relation obtained by composing
   membershipOfBusinessProcessingActivity and aggregationOfBusinessProcessBusinessProcessingActivity
   It directly links an Processing Activity to the final aggregated BusinessProcess
   hiding the reifying BusinessProcessingActivity
-}
businessProcessingActivity : Linkage ProcessingActivity BusinessProcess
businessProcessingActivity = membershipOfBusinessProcessingActivity  ∘  aggregationOfBusinessProcessBusinessProcessingActivity

{- IT Processing Activity: 
Any  IT activity which, for a given purpose of the enterprise, manipulates personal data, including collection, use, recording, etc.
-}
-- Aggregate Member : IT Processing Activity
ITProcessingActivity : ClassOfClassOfIndividual
ITProcessingActivity = ClassOfIndividual

-- Membership relation
membershipOfITProcessingActivity :  Linkage ProcessingActivity ITProcessingActivity
membershipOfITProcessingActivity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationITProcessingActivity :  Linkage ITProcessingActivity Application
aggregationOfApplicationITProcessingActivity = aggregationOfBuildingBlock

{- iTProcessingActivity : derived relation obtained by composing
   membershipOfITProcessingActivity and aggregationOfApplicationITProcessingActivity
   It directly links an Processing Activity to the final aggregated Application
   hiding the reifying ITProcessingActivity
-}
iTProcessingActivity : Linkage ProcessingActivity Application
iTProcessingActivity = membershipOfITProcessingActivity  ∘  aggregationOfApplicationITProcessingActivity
