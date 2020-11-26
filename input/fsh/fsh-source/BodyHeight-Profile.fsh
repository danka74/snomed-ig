Profile: BodyHeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyheight
Id: bodyheight
Title: "Body Height"
Description: "Profile of HL7 body height profile with SNOMED CT binding in addition to 'magic number' binding from base profile."
* code.coding contains snomedSlice 1..1
* code.coding[snomedSlice] from http://snomed.info/fhir/ValueSet/bodyheight (extensible)
* code.coding[snomedSlice].system = "http://snomed.info/sct"

