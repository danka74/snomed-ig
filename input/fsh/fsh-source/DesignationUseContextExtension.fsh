Extension: DesignationUseContextExtension 
Id: designation-use-context 
Title: "Designation Use Context Extension"
Description: """
Extension to allow specific contexts of use (eg SNOMED Language Reference Sets, 
LOINC short name, long common name, consumer name, as well as ICD-10 rubrics) 
to be specified when working with designations
"""
* ^context[0].type = #fhirpath
* ^context[0].expression = "(CodeSystem|ValueSet).descendants().select(designation)"
* ^context[1].type = #element
* ^context[1].expression = "Parameters.parameter"
* extension contains
    code 1..1 and
    role 0..1 and
* extension[code] ^short = "Designation use context"
* extension[code].value[x] only Coding
* extension[code].valueCoding from http://snomed.info/sct?fhir_vs=isa/900000000000506000 (example)
* extension[role] ^short = "Role of designation in context"
* extension[role].value[x] only Coding
* extension[role].valueCoding from http://snomed.info/sct?fhir_vs=isa/900000000000511003 (example)

