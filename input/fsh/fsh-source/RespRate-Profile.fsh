Profile: RespRate
Parent: http://hl7.org/fhir/StructureDefinition/resprate
Id: resprate
Title: "Respiratory Rate"
Description: "Profile of HL7 respiratory rate profile with SNOMED CT binding in addition to 'magic number' binding from base profile."
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from http://snomed.info/fhir/ValueSet/resprate (extensible)
* code.coding[snomedSlice].system = "http://snomed.info/sct"

