Extension: AllergyIntoleranceDetailedTypeExtension
Id: allergy-intolerance-detailed-type-extension
Title: "Allergy Intolerance Detailed Type Extension"
Description: """
Extension to allow ...
"""
* ^context[0].type = #fhirpath
* ^context[0].expression = "(CodeSystem|ValueSet).descendants().select(designation)"
* ^context[1].type = #element
* ^context[1].expression = "Parameters.parameter"
* extension contains
    context 0..1 and
    role 0..1 and
    type 0..1
* extension[context] ^short = "Designation use context"
* extension[context].value[x] only Coding
* extension[context].valueCoding from http://snomed.info/sct?fhir_vs=isa/900000000000506000 (example)
* extension[role] ^short = "Role of designation in context"
* extension[role].value[x] only Coding
* extension[role].valueCoding from http://snomed.info/sct?fhir_vs=isa/900000000000511003 (example)
* extension[type] ^short = "Type of designation in context"
* extension[type].value[x] only Coding
* extension[type].valueCoding from http://snomed.info/sct?fhir_vs=isa/900000000000446008 (example)

// 609328004 |Allergic disposition (finding)|
// 609433001 |Hypersensitivity disposition (finding)|
// 609396006 | Non-allergic hypersensitivity disposition (finding) |
// 782197009 | Intolerance to substance (finding) | 