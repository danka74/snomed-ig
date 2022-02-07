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
* include $SCT#609328004 "Allergic disposition (finding)"
* include $SCT#609433001 "Hypersensitivity disposition (finding)"
* include $SCT#609396006 "Non-allergic hypersensitivity disposition (finding)"
* include $SCT#782197009 "Intolerance to substance (finding)"