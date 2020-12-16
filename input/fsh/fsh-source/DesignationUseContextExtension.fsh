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
    context 1..1 and
    use 0..1
* extension[context] ^short = "Designation use context"
* extension[context].value[x] only Coding
* extension[context].valueCoding from http://snomed.info/sct?fhir_vs=isa/900000000000506000 (example)
* extension[use] ^short = "Role of designation in context"
* extension[use].value[x] only Coding
* extension[use].valueCoding from http://snomed.info/sct?fhir_vs=isa/900000000000511003 (example)

Instance: SimpleCodeSystem
InstanceOf: CodeSystem
Description: "Example of multiple contextual uses"
* id = "CodeSystemDesignationUseExample1"
* status = #draft
* content = #fragment
* concept[0].code = #1234
* concept[0].designation[0].value = "A term"
* concept[0].designation[0].language = #en
* concept[0].designation[0].use = #900000000000013009
* concept[0].designation[0].extension[designation-use-context][0].extension[context].valueCoding.code = #patient-friendly-refset
* concept[0].designation[0].extension[designation-use-context][0].extension[use].valueCoding.code = #preferred
* concept[0].designation[0].extension[designation-use-context][1].extension[context].valueCoding.code = #patient-unfriendly-refset
* concept[0].designation[0].extension[designation-use-context][1].extension[use].valueCoding.code = #avoid
* concept[0].designation[0].extension[designation-use-context][2].extension[context].valueCoding.system = "http://snomed.info/sct"
* concept[0].designation[0].extension[designation-use-context][2].extension[context].valueCoding.code = #608771002
* concept[0].designation[0].extension[designation-use-context][2].extension[context].valueCoding.display = "GMDN language reference set"
* concept[0].designation[0].extension[designation-use-context][2].extension[use].valueCoding.system = "http://snomed.info/sct"
* concept[0].designation[0].extension[designation-use-context][2].extension[use].valueCoding.code = #900000000000548007
* concept[0].designation[0].extension[designation-use-context][2].extension[use].valueCoding.display = "Preferred"
