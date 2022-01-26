Profile: AllergyIntoleranceFindingFocused
Parent: AllergyIntolerance
Id: AllergyIntolerance-FindingFocused
Title: "Allergy Intolerance - Finding Focused"
Description: "Profile of Allergy Intolerance resource with bindings to SNOMED CT Clinical findings as well as additional constraints to avoid overlap with the binding."
* type 0..0
* category 0..0
* code from http://snomed.info/fhir/ValueSet/allergyintolerance-finding-code (extensible)
* code.coding.system = "http://snomed.info/sct"
* reaction.substance from http://hl7.org/fhir/ValueSet/substance-code (extensible)
* reaction.manifestation from http://hl7.org/fhir/ValueSet/clinical-findings (extensible)
* reaction.exposureRoute from http://hl7.org/fhir/ValueSet/route-codes (extensible)

