{- ============================== 
   Copyright (c) 2022 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

People & Accountability: 
The People &amp; Accountability domain defines the roles that organizational members perform, so that everyone understands their responsibilities to the group.How individuals are organized around work and responsibilities matters greatly for any organization.Accountability charts provide more clarity around responsibilities and also show how people and teams are organized according to geography, Business Functions, product, or customer type. A key component of an accountability chart is the greater detail it provides about responsibilities and Business Outcome Events.

Documentation : https://framework.sysfeat.com/pages/1ce356355c48c0e2.htm

External references:
  Russell Ackoff - System of concepts - FunctionalDivisionOfLabor: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#FunctionalDivisionOfLabor
  System Thinking Alliance - Russell Ackoff: https://systemsthinkingalliance.org/russell-ackoff
  System Thinking Alliance - Socio-Technical Systems (STS): https://systemsthinkingalliance.org/glossary/#s
  Accountability Charts vs. Org Charts: A Primer: https://pingboard.com/blog/accountability-charts-vs-org-charts/
  SAFe© - Organizational Agility: https://www.scaledagileframework.com/organizational-agility/
  Russell Ackoff - System of Concepts - Organizations: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#Organizations
  Holacracy: https://www.holacracy.org/
  Felipe Castro - The Beginner’s Guide to OKRs: https://felipecastro.com/en/okr/what-is-okr/
  Wikipedia - OKR - Objectives and key results: https://en.wikipedia.org/wiki/OKR
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-1ce356355c48c0e2 where -- ========== People & Accountability

open import SysFEAT.EA.sysfeat-domain-e2ef086d62147802 public -- SOF - Resource System Operating Pattern (R-SOF)
open import SysFEAT.EA.sysfeat-domain-d670b6155ffe8bb1 public -- SOF - Business Resource Operating Pattern (B-SOF)
open import SysFEAT.EA.sysfeat-domain-255cd30862aa0da8 public -- SOF - Business System Operating Pattern
open import SysFEAT.SOF.sysfeat-domain-69346af86005efa9 public -- Initiative and Transformation Pattern
open import SysFEAT.EA.sysfeat-domain-c30bf8035a5dba7f public -- Organization & Processes
open import SysFEAT.EA.sysfeat-domain-c80a10c167853bca public -- EA Pattern - Physical Resource Agent

open import SysFEAT.EA.5e5206f867af76bb public -- Person State
open import SysFEAT.EA.41b8e49f65ee66ec public -- Person Type
open import SysFEAT.EA.2c93337b67644a6a public -- Human Resource
open import SysFEAT.EA.910196ca550a2ec2 public -- Organization
open import SysFEAT.EA.7c408aa155270eea public -- Department Type
open import SysFEAT.EA.076d151c5a5e1561 public -- Organizational Position
open import SysFEAT.EA.c7dad43c5ae92d25 public -- Person
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.e78ce83e66187ff5 public -- Department
open import SysFEAT.EA.e78cee446618815a public -- Legal Entity
