Profile: BMI
Parent: http://hl7.org/fhir/StructureDefinition/bmi
Id: bmi
Title: "BMI"
Description: "Profile of HL7 BMI profile with SNOMED CT binding in addition to 'magic number' binding from base profile."
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from http://snomed.info/fhir/ValueSet/bmi (extensible)
* code.coding[snomedSlice].system = "http://snomed.info/sct"

