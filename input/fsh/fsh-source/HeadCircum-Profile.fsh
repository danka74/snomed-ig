Profile: HeadCircum
Parent: http://hl7.org/fhir/StructureDefinition/headcircum
Id: headcircum
Title: "Head Circumference"
Description: "Profile of HL7 head circumference profile with SNOMED CT binding in addition to 'magic number' binding from base profile."
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from http://snomed.info/fhir/ValueSet/headcircum (extensible)
* code.coding[snomedSlice].system = "http://snomed.info/sct"

