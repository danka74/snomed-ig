Profile: BodyTemp
Parent: http://hl7.org/fhir/StructureDefinition/bodytemp
Id: bodytemp
Title: "Body Temperature"
Description: "Profile of HL7 body temperature profile with SNOMED CT binding in addition to 'magic number' binding from base profile."
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from http://snomed.info/fhir/ValueSet/bodytemp (extensible)
* code.coding[snomedSlice].system = "http://snomed.info/sct"

