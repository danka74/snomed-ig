Profile: AllergyIntoleranceSubstanceFocused
Parent: AllergyIntolerance
Id: AllergyIntolerance-SubstanceFocused
Title: "Allergy Intolerance - Substance Focused"
Description: "Profile of Allergy Intolerance resource with bindings to SNOMED CT Substances as well as additional constraints to avoid overlap with the binding."
* category 0..0
* code from http://hl7.org/fhir/ValueSet/substance-code (extensible)
* code.coding.system = "http://snomed.info/sct"
* reaction.substance from http://hl7.org/fhir/ValueSet/substance-code (extensible)
* reaction.manifestation from http://hl7.org/fhir/ValueSet/clinical-findings (extensible)
* reaction.exposureRoute from http://hl7.org/fhir/ValueSet/route-codes (extensible)

