{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Asset: 
A Data Asset  represents the abstract structure of any kind of data that can be processed and memorized by a Business Software System.A Data Asset is either a Data Entity or a Data Property.Only Data Entitys can have identity and states. Data Propertys only handle raw data.Data Assets are managed in Data Catalogs.

Documentation : https://framework.sysfeat.com/pages/6d2b7c935fbb6270.htm

External references:
  NIST - Data Asset: https://csrc.nist.gov/glossary/term/data_asset
  UCF Glossary - Data: https://compliancedictionary.com/term/270
  UCF Glossary - Data Element: https://compliancedictionary.com/term/2969
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6d2b7c935fbb6270 where -- ========== Data Asset

open import Agda.Primitive
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset
open import SysFEAT.EA.8f1c937168ca8195 public -- Data Block
open import SysFEAT.EA.6a70b9f6678763db public -- Business Asset
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset

DataAsset : ClassOfClassOfBoundedIndividual
DataAsset = ClassOfBoundedIndividual


--  DataAsset is subTypeOf InformationAsset
st-6d2b7c935fbb6270-e6f250185f772ee1 : DataAsset ⊏ₑ InformationAsset
st-6d2b7c935fbb6270-e6f250185f772ee1 = polySubTypeOf-identity

--  DataAsset withAspect DataBlock
st-6d2b7c935fbb6270-8f1c937168ca8195 : DataAsset ⊏ₐₑ (DataBlock (lsuc(lzero)))
st-6d2b7c935fbb6270-8f1c937168ca8195 = polySubTypeOf-identity

--  DataAsset is subTypeOf BusinessAsset
st-6d2b7c935fbb6270-6a70b9f6678763db : DataAsset ⊏ₑ BusinessAsset
st-6d2b7c935fbb6270-6a70b9f6678763db = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Data Object: -}
specializedDataObject :  Linkage DataAsset DataAsset
specializedDataObject = make_subTypeOf "Specialized Data Object" "Specialized Data Object"

postulate -- specializedDataObject is subTypeOf specializedInformationAsset
  st-325a380d66f3515e-325a372e66f33bca  : specializedDataObject  ⊏⋆ᵣ  specializedInformationAsset

-- -------------------------------------------------------------------------------------------- 
{- Realized Concept: 
Data Domains that the Data Asset is an implementation of.
-}
realizedConcept :  Linkage DataAsset ConceptualEntityAsset
realizedConcept = make_subTypeOf "Realized Concept" "Realized Concept"

postulate -- realizedConcept is subTypeOf realizedInformationAsset
  st-325a3a0d66f355bd-325a3a0b66f354a7  : realizedConcept  ⊏⋆ᵣ  realizedInformationAsset

-- -------------------------------------------------------------------------------------------- 
{- Data Object Member: 
A Data Object Member is a characteristic of an Information Asset].It can be either Relationship an or a Attribute.
-}
-- Aggregate Member : Data Object Member
DataObjectMember : ClassOfClassOfBoundedIndividual
DataObjectMember = ClassOfBoundedIndividual



--  DataObjectMember is subTypeOf InformationAssetRelationship
st-b6e3cdf35fbb6ad1-18eb1f335fdb6e7f : DataObjectMember ⊏ₑ InformationAssetRelationship
st-b6e3cdf35fbb6ad1-18eb1f335fdb6e7f = polySubTypeOf-identity

--  DataObjectMember is subTypeOf DataAsset
st-b6e3cdf35fbb6ad1-6d2b7c935fbb6270 : DataObjectMember ⊏ₑ DataAsset
st-b6e3cdf35fbb6ad1-6d2b7c935fbb6270 = polySubTypeOf-identity

-- Membership relation
membershipOfDataObjectMember :  Linkage DataAsset DataObjectMember
membershipOfDataObjectMember = make_upwardNestingRelation "dataObjectMember membership" "nested dataObjectMember"

-- Aggregation relation
aggregationOfDataAssetDataObjectMember :  Linkage DataObjectMember DataAsset
aggregationOfDataAssetDataObjectMember = make_Relation "DataAsset aggregation" "aggregated DataAsset"

{- dataObjectMember : derived relation obtained by composing
   membershipOfDataObjectMember and aggregationOfDataAssetDataObjectMember
   It directly links an Data Asset to the final aggregated DataAsset
   hiding the reifying DataObjectMember
-}
dataObjectMember : Linkage DataAsset DataAsset
dataObjectMember = membershipOfDataObjectMember  ∘  aggregationOfDataAssetDataObjectMember


