Instance: AllergyObservationExample4-1
InstanceOf: Observation
Description: """Scenario:
A physician sees a patient in clinic for routine outpatient care.  The patient has been receiving care for diabetes and hypertension.  Recently the patient was prescribed 25mg hydrochlorothiazide for his blood pressure.  He tells the physician that he has developed hives the previous week and on examination, the physician confirms the presence of generalized hives.  A review of systems fails to reveal any other causes and the physician believes that the patient may be having an urticarial reaction to hydrochlorothiazide.  He has lingering uncertainty about this and tells the patient to stop the thiazide and employ diphenhydramine for relief.  The physician advances the patient dose of losartan for blood pressure control.  He schedules him back in a week for follow-up and when recording his note for the visit, he adds to his assessment in the problem list: “Urticarial reaction, possible thiazide allergy”."""
* code = $SCT#271303006 "Examination of skin (procedure)"
* code.text = "Skin exam"
* status = #final
* category = $ObsCat#exam "Exam"
* valueCodeableConcept = $SCT#247472004 "Wheal (finding)"
* valueCodeableConcept.text = "Hives"
* bodySite = $SCT#181469002 "Entire skin (body structure)"
* bodySite.text = "Skin, generalized"

Instance: AllergyConditionExample4-1-1
InstanceOf: Condition
Description: """Scenario: 
A physician sees a patient in clinic for routine outpatient care.  The patient has been receiving care for diabetes and hypertension.  Recently the patient was prescribed 25mg hydrochlorothiazide for his blood pressure.  He tells the physician that he has developed hives the previous week and on examination, the physician confirms the presence of generalized hives.  A review of systems fails to reveal any other causes and the physician believes that the patient may be having an urticarial reaction to hydrochlorothiazide.  He has lingering uncertainty about this and tells the patient to stop the thiazide and employ diphenhydramine for relief.  The physician advances the patient dose of losartan for blood pressure control.  He schedules him back in a week for follow-up and when recording his note for the visit, he adds to his assessment in the problem list: “Urticarial reaction, possible thiazide allergy”."""
* subject = Reference(PatientExample1)
* code = $SCT#126485001 "Urticaria (disorder)"
* code.text = "Urticarial reaction"
* clinicalStatus.coding[+] = $CondClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $CondVerStatus#confirmed
* verificationStatus.coding[+] = $SCT#14657009 "Established diagnosis (contextual qualifier) (qualifier value)"
* verificationStatus.text = "Confirmed"
* category = $CondCat#problem-list-item
* severity = $SCT#6736007 "Moderate (severity modifier) (qualifier value)"
* severity.text = "Moderate"
* bodySite = $SCT#181469002 "Entire skin (body structure)"
* bodySite.text = "Skin, generalized"

Instance: AllergyConditionExample4-1-2
InstanceOf: Condition
Description: """Scenario:
A physician sees a patient in clinic for routine outpatient care.  The patient has been receiving care for diabetes and hypertension.  Recently the patient was prescribed 25mg hydrochlorothiazide for his blood pressure.  He tells the physician that he has developed hives the previous week and on examination, the physician confirms the presence of generalized hives.  A review of systems fails to reveal any other causes and the physician believes that the patient may be having an urticarial reaction to hydrochlorothiazide.  He has lingering uncertainty about this and tells the patient to stop the thiazide and employ diphenhydramine for relief.  The physician advances the patient dose of losartan for blood pressure control.  He schedules him back in a week for follow-up and when recording his note for the visit, he adds to his assessment in the problem list: “Urticarial reaction, possible thiazide allergy”."""
* subject = Reference(PatientExample1)
* code = $SCT#860765003 "Allergy to thiazide (finding)"
* code.text = "probable thiazide allergy"
* clinicalStatus.coding[+] = $CondClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $CondVerStatus#provisional
* verificationStatus.coding[+] = $SCT#371930009 "Possible (qualifier value)"
* verificationStatus.text = "Provisional"
* category = $CondCat#problem-list-item
* severity = $SCT#6736007 "Moderate (severity modifier) (qualifier value)"
* severity.text = "Moderate"
* bodySite = $SCT#116003000 "Structure of immune system (body structure)"
* bodySite.text = "Immune system"

Instance: AllergyIntoleranceExample4-2
InstanceOf: AllergyIntolerance-SubstanceFocused
Description: """Scenario:
The clinic nurse calls the patient from scenario 4.1 a week later with test results from his visit.  She inquires as to the urticaria and the patient verifies that they have disappeared with discontinuation of the diuretic.  Following clinic protocols she accesses the patient EHR and proceeds to make a new entry into the substance-based allergy list which is employed by the EHR software for issuing clinical prescribing alerts.  The software steps through a series of questions asking: what was the offending agent, what were symptoms or findings resulting from the reaction, what class of reaction occurred, what was the severity, criticality and verification status.  The nurse answers the questions and an allergy record appears in the list “Hydrochlorothiazide; Allergy; Moderate severity; Low criticality; Symptoms-Hives”.
Years later the patient is seeing another physician within the organization for consultation on treatment of resistant hypertension.  The second physician decides that an ACE inhibitor/thiazide medication is appropriate for the patient.  When the physician creates an order for “Lisinopril-hydrochlorothiazide 20/25” and commits to the electronic prescription, an alert appears which requires a response by the physician warning him of an allergy history to hydrochlorothiazide which is an ingredient in the drug he is about to order.  The alert is generated by the EHR software which uses the Allergy list as reference.   The physician retracts the order and chooses another antihypertensive."""
* patient = Reference(PatientExample1)
* code = $SCT#387525002 "Hydrochlorothiazide (substance)"
* code.text = "Hydrochlorothiazide"
* type = #allergy
* clinicalStatus.coding[+] = $AIClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $AIVerStatus#unconfirmed
* verificationStatus.coding[+] = $SCT#2931005 "Probable diagnosis (qualifier value)"
* clinicalStatus.text = "Probable"
* criticality = #low
// * category = #medication // Excluded from SNOMED profile as it overlaps semantically with code
* reaction.substance = $SCT#387525002 "Hydrochlorothiazide (substance)"
* reaction.substance.text = "Hydrochlorothiazide"
* reaction.manifestation = $SCT#126485001 "Urticaria (disorder)"
* reaction.manifestation.text = "Urticaria"
* reaction.severity = #moderate
* reaction.exposureRoute = $SCT#26643006 "Oral route (qualifier value)"

Instance: PatientExample1
InstanceOf: Patient
Description: "Example for Patient"
* id = "PatientExample1"
* identifier.use = #usual
* identifier.type = $IdType#MR "Medical Record Number"
* identifier.system = "urn:oid:1.2.36.146.595.217.0.1"
* identifier.value = "1234567890"
* identifier.period.start = "2001-05-06"
* identifier.assigner.display = "Acme Healthcare"
* name[0].use = #official
* name[0].family = "Goode"
* name[0].given[0] = "John"
* name[0].given[1] = "B."
* name[1].use = #usual
* name[1].given[0] = "Johnny"
* name[1].given[1] = "B."
* gender = #male
* birthDate = "1958-01-06"
* address.line = "2120 S Michigan Ave"
* address.city = "Chicago"
* address.postalCode = "60616"
* address.country = "US"