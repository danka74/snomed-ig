Instance: AllergyIntoleranceFindingFocusedExample1
InstanceOf: AllergyIntoleranceFindingFocused
Description: "Allergy example using SNOMED CT Clinical Finding"
* clinicalStatus = AIClinStatus#active
* verificationStatus = AIVerStatus#confirmed
* code = SCT#300916003 "Allergy to latex (finding)"
* patient = Reference(PatientExample1)

Instance: PatientExample1
InstanceOf: Patient
Description: "Example for Patient"
* id = "PatientExample1"
* identifier.use = #usual
* identifier.type = IdType#MR "Medical Record Number"
* identifier.system = "urn:oid:1.2.36.146.595.217.0.1"
* identifier.value = "1234567890"
* identifier.period.start = "2001-05-06"
* identifier.assigner.display = "Acme Healthcare"
* name[0].use = #official
* name[0].family = "Goode"
* name[0].given[0] = "John"
* name[0].given[1] = "B."
* name[1].use = #usual
* name[1].given = "Johnny"
* gender = #male
* birthDate = "1958-01-06"
* address.line = "2120 S Michigan Ave"
* address.city = "Chicago"
* address.postalCode = "60616"
* address.country = "US"