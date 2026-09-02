{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Lineage: 
A Data Lineage is about tracking the flow of information from source Information Assets to final Information Assets.It is necessary to guarantee the quality, usability and security of business data.For large organizations, it is also a key conformity legal requirement, for instance in BCBS 239 and Solvency II.Business Data Lineage is defined as a business data life cycle that describes the source of business data and where it moves over time.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.23ab2e945da829b8 where -- ========== Data Lineage

open import Agda.Primitive
open import SysFEAT.EA.b90aeac8600e619f public -- Data Assurance Case
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.EA.72fe99b65e985953 public -- Data Processor
open import SysFEAT.EA.72fe99d65e98598e public -- Data Quality Measure
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.SOF.d6cd2cea5ab98e5f public -- Information Entity
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type

DataLineage : ClassOfClassOfBoundedIndividual
DataLineage = ClassOfBoundedIndividual

--  DataLineage is subTypeOf DataAssuranceCase
st-36420b6d6008022f : DataLineage ⊏ₑ DataAssuranceCase
st-36420b6d6008022f = polySubTypeOf-identity

-- == Relationships =======================

{- Realized Data Lineage: -}
realizedDataLineage :  Linkage DataLineage DataLineage
realizedDataLineage = make_subTypeOf "Realized Data Lineage" "realizedDataLineage"


{- Data Lineage Flow: -}
-- Aggregate Member : Data Lineage Flow
DataLineageFlow : ClassOfClassOfIndividual
DataLineageFlow = ClassOfIndividual

-- Membership relation
membershipOfDataLineageFlow :  Linkage DataLineage DataLineageFlow
membershipOfDataLineageFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBehavioralEventDataLineageFlow :  Linkage DataLineageFlow BehavioralEvent
aggregationOfBehavioralEventDataLineageFlow = aggregationOfBuildingBlock

{- dataLineageFlow : derived relation obtained by composing
   membershipOfDataLineageFlow and aggregationOfBehavioralEventDataLineageFlow
   It directly links an Data Lineage to the final aggregated BehavioralEvent
   hiding the reifying DataLineageFlow
-}
dataLineageFlow : Linkage DataLineage BehavioralEvent
dataLineageFlow = membershipOfDataLineageFlow  ∘  aggregationOfBehavioralEventDataLineageFlow

{- Data Processing: -}
-- Aggregate Member : Data Processing
DataProcessing : ClassOfClassOfIndividual
DataProcessing = ClassOfIndividual

-- Membership relation
membershipOfDataProcessing :  Linkage DataLineage DataProcessing
membershipOfDataProcessing = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataProcessorDataProcessing :  Linkage DataProcessing DataProcessor
aggregationOfDataProcessorDataProcessing = aggregationOfBuildingBlock

{- dataProcessing : derived relation obtained by composing
   membershipOfDataProcessing and aggregationOfDataProcessorDataProcessing
   It directly links an Data Lineage to the final aggregated DataProcessor
   hiding the reifying DataProcessing
-}
dataProcessing : Linkage DataLineage DataProcessor
dataProcessing = membershipOfDataProcessing  ∘  aggregationOfDataProcessorDataProcessing

{- Data Quality Node: -}
-- Aggregate Member : Data Quality Node
DataQualityNode : ClassOfClassOfIndividual
DataQualityNode = ClassOfIndividual

-- Membership relation
membershipOfDataQualityNode :  Linkage DataLineage DataQualityNode
membershipOfDataQualityNode = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataQualityMeasureDataQualityNode :  Linkage DataQualityNode DataQualityMeasure
aggregationOfDataQualityMeasureDataQualityNode = aggregationOfBuildingBlock

{- dataQualityNode : derived relation obtained by composing
   membershipOfDataQualityNode and aggregationOfDataQualityMeasureDataQualityNode
   It directly links an Data Lineage to the final aggregated DataQualityMeasure
   hiding the reifying DataQualityNode
-}
dataQualityNode : Linkage DataLineage DataQualityMeasure
dataQualityNode = membershipOfDataQualityNode  ∘  aggregationOfDataQualityMeasureDataQualityNode

{- Asset Involvement: -}
-- Aggregate Member : Asset Involvement
AssetInvolvement : ClassOfClassOfIndividual
AssetInvolvement = ClassOfIndividual

-- Membership relation
membershipOfAssetInvolvement :  Linkage DataLineage AssetInvolvement
membershipOfAssetInvolvement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfFunctionalAssetAssetInvolvement :  Linkage AssetInvolvement FunctionalAsset
aggregationOfFunctionalAssetAssetInvolvement = aggregationOfBuildingBlock

{- assetInvolvement : derived relation obtained by composing
   membershipOfAssetInvolvement and aggregationOfFunctionalAssetAssetInvolvement
   It directly links an Data Lineage to the final aggregated FunctionalAsset
   hiding the reifying AssetInvolvement
-}
assetInvolvement : Linkage DataLineage FunctionalAsset
assetInvolvement = membershipOfAssetInvolvement  ∘  aggregationOfFunctionalAssetAssetInvolvement

{- Origin Entity: -}
-- Aggregate Member : Origin Entity
OriginEntity : ClassOfClassOfIndividual
OriginEntity = ClassOfIndividual

-- Membership relation
membershipOfOriginEntity :  Linkage DataLineage OriginEntity
membershipOfOriginEntity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationEntityOriginEntity :  Linkage OriginEntity InformationEntity
aggregationOfInformationEntityOriginEntity = aggregationOfBuildingBlock

{- originEntity : derived relation obtained by composing
   membershipOfOriginEntity and aggregationOfInformationEntityOriginEntity
   It directly links an Data Lineage to the final aggregated InformationEntity
   hiding the reifying OriginEntity
-}
originEntity : Linkage DataLineage InformationEntity
originEntity = membershipOfOriginEntity  ∘  aggregationOfInformationEntityOriginEntity

{- External Source: -}
-- Aggregate Member : External Source
ExternalSource : ClassOfClassOfIndividual
ExternalSource = ClassOfIndividual

-- Membership relation
membershipOfExternalSource :  Linkage DataLineage ExternalSource
membershipOfExternalSource = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSOftwareTechnologyExternalSource :  Linkage ExternalSource SOftwareTechnology
aggregationOfSOftwareTechnologyExternalSource = aggregationOfBuildingBlock

{- externalSource : derived relation obtained by composing
   membershipOfExternalSource and aggregationOfSOftwareTechnologyExternalSource
   It directly links an Data Lineage to the final aggregated SOftwareTechnology
   hiding the reifying ExternalSource
-}
externalSource : Linkage DataLineage SOftwareTechnology
externalSource = membershipOfExternalSource  ∘  aggregationOfSOftwareTechnologyExternalSource

{- Data Source: -}
-- Aggregate Member : Data Source
DataSource : ClassOfClassOfIndividual
DataSource = ClassOfIndividual

-- Membership relation
membershipOfDataSource :  Linkage DataLineage DataSource
membershipOfDataSource = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSOftwareSystemDataSource :  Linkage DataSource BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemDataSource = aggregationOfBuildingBlock

{- dataSource : derived relation obtained by composing
   membershipOfDataSource and aggregationOfBusinessSOftwareSystemDataSource
   It directly links an Data Lineage to the final aggregated BusinessSOftwareSystem
   hiding the reifying DataSource
-}
dataSource : Linkage DataLineage BusinessSOftwareSystem
dataSource = membershipOfDataSource  ∘  aggregationOfBusinessSOftwareSystemDataSource

{- Final Entity: -}
-- Aggregate Member : Final Entity
FinalEntity : ClassOfClassOfIndividual
FinalEntity = ClassOfIndividual

-- Membership relation
membershipOfFinalEntity :  Linkage DataLineage FinalEntity
membershipOfFinalEntity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationEntityFinalEntity :  Linkage FinalEntity InformationEntity
aggregationOfInformationEntityFinalEntity = aggregationOfBuildingBlock

{- finalEntity : derived relation obtained by composing
   membershipOfFinalEntity and aggregationOfInformationEntityFinalEntity
   It directly links an Data Lineage to the final aggregated InformationEntity
   hiding the reifying FinalEntity
-}
finalEntity : Linkage DataLineage InformationEntity
finalEntity = membershipOfFinalEntity  ∘  aggregationOfInformationEntityFinalEntity

{- Intermediate Entity: -}
-- Aggregate Member : Intermediate Entity
IntermediateEntity : ClassOfClassOfIndividual
IntermediateEntity = ClassOfIndividual

-- Membership relation
membershipOfIntermediateEntity :  Linkage DataLineage IntermediateEntity
membershipOfIntermediateEntity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationEntityIntermediateEntity :  Linkage IntermediateEntity InformationEntity
aggregationOfInformationEntityIntermediateEntity = aggregationOfBuildingBlock

{- intermediateEntity : derived relation obtained by composing
   membershipOfIntermediateEntity and aggregationOfInformationEntityIntermediateEntity
   It directly links an Data Lineage to the final aggregated InformationEntity
   hiding the reifying IntermediateEntity
-}
intermediateEntity : Linkage DataLineage InformationEntity
intermediateEntity = membershipOfIntermediateEntity  ∘  aggregationOfInformationEntityIntermediateEntity

{- Participant Organization: 
The Data Lineage Participant helps to define where the data lineage node (Processing, Control..). occurs.It can represent an Organization or Position Type.
-}
-- Aggregate Member : Participant Organization
ParticipantOrganization : ClassOfClassOfIndividual
ParticipantOrganization = ClassOfIndividual

-- Membership relation
membershipOfParticipantOrganization :  Linkage DataLineage ParticipantOrganization
membershipOfParticipantOrganization = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrgUnitTypeParticipantOrganization :  Linkage ParticipantOrganization OrgUnitType
aggregationOfOrgUnitTypeParticipantOrganization = aggregationOfBuildingBlock

{- participantOrganization : derived relation obtained by composing
   membershipOfParticipantOrganization and aggregationOfOrgUnitTypeParticipantOrganization
   It directly links an Data Lineage to the final aggregated OrgUnitType
   hiding the reifying ParticipantOrganization
-}
participantOrganization : Linkage DataLineage OrgUnitType
participantOrganization = membershipOfParticipantOrganization  ∘  aggregationOfOrgUnitTypeParticipantOrganization
