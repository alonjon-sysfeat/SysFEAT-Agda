{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Lineage: 
A Data Lineage is about tracking the flow of information from source Information Assets to final Information Assets.It is necessary to guarantee the quality, usability and security of business data.For large organizations, it is also a key conformity legal requirement, for instance in BCBS 239 and Solvency II.Business Data Lineage is defined as a business data life cycle that describes the source of business data and where it moves over time.

Documentation : https://framework.sysfeat.com/pages/23ab2e945da829b8.htm

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
st-23ab2e945da829b8-b90aeac8600e619f : DataLineage ⊏ₑ DataAssuranceCase
st-23ab2e945da829b8-b90aeac8600e619f = polySubTypeOf-identity

-- == Relationships =======================

{- Realized Data Lineage: -}
realizedDataLineage :  Linkage DataLineage DataLineage
realizedDataLineage = make_subTypeOf "Realized Data Lineage" "Realized Data Lineage"


{- Data Lineage Flow: -}
-- Aggregate Member : Data Lineage Flow
DataLineageFlow : ClassOfClassOfIndividual
DataLineageFlow = ClassOfIndividual

-- Membership relation
membershipOfDataLineageFlow :  Linkage DataLineage DataLineageFlow
membershipOfDataLineageFlow = make_upwardNestingRelation "dataLineageFlow membership" "nested dataLineageFlow"

-- Aggregation relation
aggregationOfBehavioralEventDataLineageFlow :  Linkage DataLineageFlow BehavioralEvent
aggregationOfBehavioralEventDataLineageFlow = make_Relation "BehavioralEvent aggregation" "aggregated BehavioralEvent"

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
membershipOfDataProcessing = make_upwardNestingRelation "dataProcessing membership" "nested dataProcessing"

-- Aggregation relation
aggregationOfDataProcessorDataProcessing :  Linkage DataProcessing DataProcessor
aggregationOfDataProcessorDataProcessing = make_Relation "DataProcessor aggregation" "aggregated DataProcessor"

{- dataProcessing : derived relation obtained by composing
   membershipOfDataProcessing and aggregationOfDataProcessorDataProcessing
   It directly links an Data Lineage to the final aggregated DataProcessor
   hiding the reifying DataProcessing
-}
dataProcessing : Linkage DataLineage DataProcessor
dataProcessing = membershipOfDataProcessing  ∘  aggregationOfDataProcessorDataProcessing

postulate -- dataProcessing is subTypeOf assetInvolvement
  st-137d42a35ee25d48-8f6d910868e36ddc  : dataProcessing   ⊏⋆ᵣ  assetInvolvement 


{- Data Quality Node: -}
-- Aggregate Member : Data Quality Node
DataQualityNode : ClassOfClassOfIndividual
DataQualityNode = ClassOfIndividual

-- Membership relation
membershipOfDataQualityNode :  Linkage DataLineage DataQualityNode
membershipOfDataQualityNode = make_upwardNestingRelation "dataQualityNode membership" "nested dataQualityNode"

-- Aggregation relation
aggregationOfDataQualityMeasureDataQualityNode :  Linkage DataQualityNode DataQualityMeasure
aggregationOfDataQualityMeasureDataQualityNode = make_Relation "DataQualityMeasure aggregation" "aggregated DataQualityMeasure"

{- dataQualityNode : derived relation obtained by composing
   membershipOfDataQualityNode and aggregationOfDataQualityMeasureDataQualityNode
   It directly links an Data Lineage to the final aggregated DataQualityMeasure
   hiding the reifying DataQualityNode
-}
dataQualityNode : Linkage DataLineage DataQualityMeasure
dataQualityNode = membershipOfDataQualityNode  ∘  aggregationOfDataQualityMeasureDataQualityNode

postulate -- dataQualityNode is subTypeOf assetInvolvement
  st-137d43985ee2f548-8f6d910868e36ddc  : dataQualityNode   ⊏⋆ᵣ  assetInvolvement 
postulate -- dataQualityNode is subTypeOf appliedControlMeasure
  st-137d43985ee2f548-f1600eb767d84743  : dataQualityNode   ⊏⋆ᵣ  appliedControlMeasure 


{- Asset Involvement: -}
-- Aggregate Member : Asset Involvement
AssetInvolvement : ClassOfClassOfIndividual
AssetInvolvement = ClassOfIndividual

-- Membership relation
membershipOfAssetInvolvement :  Linkage DataLineage AssetInvolvement
membershipOfAssetInvolvement = make_upwardNestingRelation "assetInvolvement membership" "nested assetInvolvement"

-- Aggregation relation
aggregationOfFunctionalAssetAssetInvolvement :  Linkage AssetInvolvement FunctionalAsset
aggregationOfFunctionalAssetAssetInvolvement = make_Relation "FunctionalAsset aggregation" "aggregated FunctionalAsset"

{- assetInvolvement : derived relation obtained by composing
   membershipOfAssetInvolvement and aggregationOfFunctionalAssetAssetInvolvement
   It directly links an Data Lineage to the final aggregated FunctionalAsset
   hiding the reifying AssetInvolvement
-}
assetInvolvement : Linkage DataLineage FunctionalAsset
assetInvolvement = membershipOfAssetInvolvement  ∘  aggregationOfFunctionalAssetAssetInvolvement

postulate -- assetInvolvement is subTypeOf involvedAsset
  st-8f6d910868e36ddc-9152e6975ed764d3  : assetInvolvement   ⊏⋆ᵣ  involvedAsset 


{- Origin Entity: -}
-- Aggregate Member : Origin Entity
OriginEntity : ClassOfClassOfIndividual
OriginEntity = ClassOfIndividual

-- Membership relation
membershipOfOriginEntity :  Linkage DataLineage OriginEntity
membershipOfOriginEntity = make_upwardNestingRelation "originEntity membership" "nested originEntity"

-- Aggregation relation
aggregationOfInformationEntityOriginEntity :  Linkage OriginEntity InformationEntity
aggregationOfInformationEntityOriginEntity = make_Relation "InformationEntity aggregation" "aggregated InformationEntity"

{- originEntity : derived relation obtained by composing
   membershipOfOriginEntity and aggregationOfInformationEntityOriginEntity
   It directly links an Data Lineage to the final aggregated InformationEntity
   hiding the reifying OriginEntity
-}
originEntity : Linkage DataLineage InformationEntity
originEntity = membershipOfOriginEntity  ∘  aggregationOfInformationEntityOriginEntity

postulate -- originEntity is subTypeOf assetInvolvement
  st-acb4af8462457ab3-8f6d910868e36ddc  : originEntity   ⊏⋆ᵣ  assetInvolvement 


{- External Source: -}
-- Aggregate Member : External Source
ExternalSource : ClassOfClassOfIndividual
ExternalSource = ClassOfIndividual

-- Membership relation
membershipOfExternalSource :  Linkage DataLineage ExternalSource
membershipOfExternalSource = make_upwardNestingRelation "externalSource membership" "nested externalSource"

-- Aggregation relation
aggregationOfSOftwareTechnologyExternalSource :  Linkage ExternalSource SOftwareTechnology
aggregationOfSOftwareTechnologyExternalSource = make_Relation "SOftwareTechnology aggregation" "aggregated SOftwareTechnology"

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
membershipOfDataSource = make_upwardNestingRelation "dataSource membership" "nested dataSource"

-- Aggregation relation
aggregationOfBusinessSOftwareSystemDataSource :  Linkage DataSource BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemDataSource = make_Relation "BusinessSOftwareSystem aggregation" "aggregated BusinessSOftwareSystem"

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
membershipOfFinalEntity = make_upwardNestingRelation "finalEntity membership" "nested finalEntity"

-- Aggregation relation
aggregationOfInformationEntityFinalEntity :  Linkage FinalEntity InformationEntity
aggregationOfInformationEntityFinalEntity = make_Relation "InformationEntity aggregation" "aggregated InformationEntity"

{- finalEntity : derived relation obtained by composing
   membershipOfFinalEntity and aggregationOfInformationEntityFinalEntity
   It directly links an Data Lineage to the final aggregated InformationEntity
   hiding the reifying FinalEntity
-}
finalEntity : Linkage DataLineage InformationEntity
finalEntity = membershipOfFinalEntity  ∘  aggregationOfInformationEntityFinalEntity

postulate -- finalEntity is subTypeOf concernedInformation
  st-acb4b3b562457c32-b90afa69600e715c  : finalEntity   ⊏⋆ᵣ  concernedInformation 


{- Intermediate Entity: -}
-- Aggregate Member : Intermediate Entity
IntermediateEntity : ClassOfClassOfIndividual
IntermediateEntity = ClassOfIndividual

-- Membership relation
membershipOfIntermediateEntity :  Linkage DataLineage IntermediateEntity
membershipOfIntermediateEntity = make_upwardNestingRelation "intermediateEntity membership" "nested intermediateEntity"

-- Aggregation relation
aggregationOfInformationEntityIntermediateEntity :  Linkage IntermediateEntity InformationEntity
aggregationOfInformationEntityIntermediateEntity = make_Relation "InformationEntity aggregation" "aggregated InformationEntity"

{- intermediateEntity : derived relation obtained by composing
   membershipOfIntermediateEntity and aggregationOfInformationEntityIntermediateEntity
   It directly links an Data Lineage to the final aggregated InformationEntity
   hiding the reifying IntermediateEntity
-}
intermediateEntity : Linkage DataLineage InformationEntity
intermediateEntity = membershipOfIntermediateEntity  ∘  aggregationOfInformationEntityIntermediateEntity

postulate -- intermediateEntity is subTypeOf assetInvolvement
  st-acb4b3f162457d1a-8f6d910868e36ddc  : intermediateEntity   ⊏⋆ᵣ  assetInvolvement 


{- Participant Organization: 
The Data Lineage Participant helps to define where the data lineage node (Processing, Control..). occurs.It can represent an Organization or Position Type.
-}
-- Aggregate Member : Participant Organization
ParticipantOrganization : ClassOfClassOfIndividual
ParticipantOrganization = ClassOfIndividual

-- Membership relation
membershipOfParticipantOrganization :  Linkage DataLineage ParticipantOrganization
membershipOfParticipantOrganization = make_upwardNestingRelation "participantOrganization membership" "nested participantOrganization"

-- Aggregation relation
aggregationOfOrgUnitTypeParticipantOrganization :  Linkage ParticipantOrganization OrgUnitType
aggregationOfOrgUnitTypeParticipantOrganization = make_Relation "OrgUnitType aggregation" "aggregated OrgUnitType"

{- participantOrganization : derived relation obtained by composing
   membershipOfParticipantOrganization and aggregationOfOrgUnitTypeParticipantOrganization
   It directly links an Data Lineage to the final aggregated OrgUnitType
   hiding the reifying ParticipantOrganization
-}
participantOrganization : Linkage DataLineage OrgUnitType
participantOrganization = membershipOfParticipantOrganization  ∘  aggregationOfOrgUnitTypeParticipantOrganization


