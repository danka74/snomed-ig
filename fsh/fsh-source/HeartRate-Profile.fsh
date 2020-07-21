Profile: HeartRate
Parent: http://hl7.org/fhir/StructureDefinition/heartrate
Id: heartrate
Title: "Heart Rate"
Description: "Profile of HL7 heart rate profile with SNOMED CT binding in addition to 'magic number' binding from base profile."
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from http://snomed.info/fhir/ValueSet/heartrate (extensible)
* code.coding[snomedSlice].system = "http://snomed.info/sct"

