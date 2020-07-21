Profile: BodyWeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyweight
Id: bodyweight
Title: "Body Weight"
Description: "Profile of HL7 body weight profile with SNOMED CT binding in addition to 'magic number' binding from base profile."
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from http://snomed.info/fhir/ValueSet/bodyweight (extensible)
* code.coding[snomedSlice].system = "http://snomed.info/sct"

