Extension: AllergyIntoleranceDetailedTypeExtension
Id: allergy-intolerance-detailed-type
Title: "Allergy Intolerance Detailed Type Extension"
Description: """
Extension to allow detailed coding similar to AllergyIntolerance.type.
"""
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance"
* value[x] only CodeableConcept
* valueCodeableConcept from AllergyIntoleranceDetailedTypeVS

ValueSet: AllergyIntoleranceDetailedTypeVS
Id: alleryg-intolerance-detailed-type-value-set
Title: "Allergy Intolerance Detailed Type Value Set"
Description: """
A value set with detailed type of allergy or intolerance to be used in addition to AllergeyIntolerance.type in R4.
R5 have been amended with an update value set.
"""
* ^experimental = false
* include $SCT#420134006 // "Propensity to adverse reaction (finding)"
* include $SCT#609328004 // "Allergic disposition (finding)"
* include $SCT#609433001 // "Hypersensitivity disposition (finding)"
* include $SCT#609396006 // "Non-allergic hypersensitivity disposition (finding)"
* include $SCT#782197009 // "Intolerance to substance (finding)"