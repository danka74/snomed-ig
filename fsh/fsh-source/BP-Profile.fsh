Profile: BP
Parent: http://hl7.org/fhir/StructureDefinition/bp
Id: bp
Title: "Blood pressure"
Description: "Profile of HL7 blood pressure profile with SNOMED CT binding in addition to 'magic number' binding from base profile."
//* component contains SystolicBP 1..1
* component[SystolicBP].code.coding contains snomedSBPSlice 1..1
* component[SystolicBP].code.coding[snomedSBPSlice] from http://snomed.info/fhir/ValueSet/syst-bp (extensible)
* component[SystolicBP].code.coding[snomedSBPSlice].system = "http://snomed.info/sct"
//* component contains DiastolicBP 1..1
* component[DiastolicBP].code.coding contains snomedDBPSlice 1..1
* component[DiastolicBP].code.coding[snomedDBPSlice] from http://snomed.info/fhir/ValueSet/dia-bp (extensible)
* component[DiastolicBP].code.coding[snomedDBPSlice].system = "http://snomed.info/sct"

