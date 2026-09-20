--- Sample-Car.agda ---
-- {-# OPTIONS --safe --cubical --guardedness #-}
{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.Samples.Sample-Car where 

open import Agda.Primitive
open import SysFEAT.UpperOntology.f41700e868ee0f29 public -- First Order Entity 

-- ============================================================
-- I. User type model (M1 Graph)
-- ============================================================
Car : FirstOrderClass
Car = FirstOrderEntity

postulate
  Engine : FirstOrderClass

  -- On définit le lien de composition à l'aide de l'holonymie
  carComposedOfEngine : Car —⟨ classOfHolonymy ⟩→ Engine 
  
-- ============================================================
-- II. User instance model (M0 Graph)
-- ============================================================
postulate
  myCarPeugeot : Car
  myCar-inst   : myCarPeugeot ∷ₑ Car

  myEngineV6   : FirstOrderEntity
  myEngine-inst : myEngineV6 ∷ₑ Engine

  -- M0 link
  myPhysicalAssembly : myCarPeugeot —⟨ holonymyRelation ⟩→ myEngineV6

