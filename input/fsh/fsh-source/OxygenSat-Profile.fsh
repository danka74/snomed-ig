Profile: OxygenSat
Parent: http://hl7.org/fhir/StructureDefinition/oxygensat
Id: oxygensat
Title: "Oxygen Saturation"
Description: "Profile of HL7 oxygen saturation profile with SNOMED CT binding in addition to 'magic number' binding from base profile."
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from http://snomed.info/fhir/ValueSet/oxygensat (extensible)
* code.coding[snomedSlice].system = "http://snomed.info/sct"

