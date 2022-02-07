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
* clinicalStatus.text = "AcAlias:tive"
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
* verificationStatus.text = "Probable"
* criticality = #low
// * category = #medication // Excluded from SNOMED profile as it overlaps semantically with code
* reaction.substance = $SCT#387525002 "Hydrochlorothiazide (substance)"
* reaction.substance.text = "Hydrochlorothiazide"
* reaction.manifestation = $SCT#126485001 "Urticaria (disorder)"
* reaction.manifestation.text = "Urticaria"
* reaction.severity = #moderate
* reaction.exposureRoute = $SCT#26643006 "Oral route (qualifier value)"

Instance: AllergyIntoleranceExample4-2-alt
InstanceOf: AllergyIntolerance-FindingFocused
Description: """Scenario:
The clinic nurse calls the patient from scenario 4.1 a week later with test results from his visit.  She inquires as to the urticaria and the patient verifies that they have disappeared with discontinuation of the diuretic.  Following clinic protocols she accesses the patient EHR and proceeds to make a new entry into the substance-based allergy list which is employed by the EHR software for issuing clinical prescribing alerts.  The software steps through a series of questions asking: what was the offending agent, what were symptoms or findings resulting from the reaction, what class of reaction occurred, what was the severity, criticality and verification status.  The nurse answers the questions and an allergy record appears in the list “Hydrochlorothiazide; Allergy; Moderate severity; Low criticality; Symptoms-Hives”.
Years later the patient is seeing another physician within the organization for consultation on treatment of resistant hypertension.  The second physician decides that an ACE inhibitor/thiazide medication is appropriate for the patient.  When the physician creates an order for “Lisinopril-hydrochlorothiazide 20/25” and commits to the electronic prescription, an alert appears which requires a response by the physician warning him of an allergy history to hydrochlorothiazide which is an ingredient in the drug he is about to order.  The alert is generated by the EHR software which uses the Allergy list as reference.   The physician retracts the order and chooses another antihypertensive."""
* patient = Reference(PatientExample1)
* code = $SCT#860765003 "Allergy to thiazide (finding)"
* code.text = "Thiazide allergy"
// * type = #allergy 
* clinicalStatus.coding[+] = $AIClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $AIVerStatus#unconfirmed
* verificationStatus.coding[+] = $SCT#2931005 "Probable diagnosis (qualifier value)"
* verificationStatus.text = "Probable"
* criticality = #low
// * category = #medication // Excluded from SNOMED profile as it overlaps semantically with code
* reaction.substance = $SCT#387525002 "Hydrochlorothiazide (substance)"
* reaction.substance.text = "Hydrochlorothiazide"
* reaction.manifestation = $SCT#126485001 "Urticaria (disorder)"
* reaction.manifestation.text = "Urticaria"
* reaction.severity = #moderate
* reaction.exposureRoute = $SCT#26643006 "Oral route (qualifier value)"

Instance: AllergyConditionExample4-3
InstanceOf: Condition
Description: """Scenario:
A patient enters the urgent care with complaints of ringing, clanging and whistling in his ears. The patient cannot distinctly state when the noises initiated and has not been exposed to any high noise environments. The patient has a history of chronic back pain, congestive heart failure and arthritis. Upon reviewing the patient’s medication list, the physician notices that the patient has been taking 12 tablets of aspirin each day. The physician suspects that the patient is suffering from aspirin induced tinnitus. The patient is encouraged to decrease his aspirin dose and follow up with his rheumatologist who prescribed the aspirin. In the patient’s electronic medical record the urgent care specialist documents in the encounter diagnosis and allergy list that the patient has a drug intolerance to aspirin."""
* subject = Reference(PatientExample1)
* code = $SCT#292044008 "Aspirin adverse reaction (disorder)"
* code.text = "Aspirin intolerance" // ????
* clinicalStatus.coding[+] = $CondClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $CondVerStatus#differential
* verificationStatus.coding[+] = $SCT#47965005 "Diufferential diagnosis(qualifier)"
* verificationStatus.text = "Differential"
* category = $CondCat#encounter-diagnosis
* severity = $SCT#255604002 "Mild (qualifier)"
* severity.text = "Mild"

Instance: AllergyIntoleranceExample4-3
InstanceOf: AllergyIntolerance-SubstanceFocused
Description: """Scenario:
A patient enters the urgent care with complaints of ringing, clanging and whistling in his ears. The patient cannot distinctly state when the noises initiated and has not been exposed to any high noise environments. The patient has a history of chronic back pain, congestive heart failure and arthritis. Upon reviewing the patient’s medication list, the physician notices that the patient has been taking 12 tablets of aspirin each day. The physician suspects that the patient is suffering from aspirin induced tinnitus. The patient is encouraged to decrease his aspirin dose and follow up with his rheumatologist who prescribed the aspirin. In the patient’s electronic medical record the urgent care specialist documents in the encounter diagnosis and allergy list that the patient has a drug intolerance to aspirin."""
* patient = Reference(PatientExample1)
* code = $SCT#387458008 "Aspirin (substance)"
* code.text = "Aspirin"
* type = #allergy
* clinicalStatus.coding[+] = $AIClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $AIVerStatus#confirmed
* verificationStatus.coding[+] = $SCT#4106005003 "Confirmed present (qualifier)"
* verificationStatus.text = "Confirmed"
* criticality = #low
// * category = #medication // Excluded from SNOMED profile as it overlaps semantically with code
* reaction.substance = $SCT#387458008 "Aspirin (substance)"
* reaction.substance.text = "Aspirin"
// * reaction.certainty = #confirmed 410605003 Confirmed present (qualifier value)
* reaction.manifestation = $SCT#60862001 "Tinnitus (finding)"
* reaction.manifestation.text = "Tinnitus"
* reaction.severity = #mild
* reaction.exposureRoute = $SCT#26643006 "Oral route (qualifier value)"

Instance: AllergyIntoleranceExample4-3-alternative
InstanceOf: AllergyIntolerance-FindingFocused
Description: """Scenario:
A patient enters the urgent care with complaints of ringing, clanging and whistling in his ears. The patient cannot distinctly state when the noises initiated and has not been exposed to any high noise environments. The patient has a history of chronic back pain, congestive heart failure and arthritis. Upon reviewing the patient’s medication list, the physician notices that the patient has been taking 12 tablets of aspirin each day. The physician suspects that the patient is suffering from aspirin induced tinnitus. The patient is encouraged to decrease his aspirin dose and follow up with his rheumatologist who prescribed the aspirin. In the patient’s electronic medical record the urgent care specialist documents in the encounter diagnosis and allergy list that the patient has a drug intolerance to aspirin."""
* patient = Reference(PatientExample1)
* code = $SCT#293586001 "Allergy to aspirin (finding)"
* code.text = "Aspirin allergy"
// * type = #allergy
* clinicalStatus.coding[+] = $AIClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $AIVerStatus#confirmed
* verificationStatus.coding[+] = $SCT#4106005003 "Confirmed present (qualifier)"
* verificationStatus.text = "Confirmed"
* criticality = #low
// * category = #medication // Excluded from SNOMED profile as it overlaps semantically with code
* reaction.substance = $SCT#387458008 "Aspirin (substance)"
* reaction.substance.text = "Aspirin"
// * reaction.certainty = #confirmed 410605003 Confirmed present (qualifier value)
* reaction.manifestation = $SCT#60862001 "Tinnitus (finding)"
* reaction.manifestation.text = "Tinnitus"
* reaction.severity = #mild
* reaction.exposureRoute = $SCT#26643006 "Oral route (qualifier value)"

Instance: AllergyConditionExample4-4
InstanceOf: Condition
Description: """Scenario: The patient from scenario 4.1 is planning a vacation with his family consisting of a cross-country camping trip.  In preparation for travels, he speaks to his physician and obtains an electronic summary of his healthcare record on a flash drive for himself, his wife and children. His physician informs him that the summary software includes an electronic ‘reader’ as well as a standard format that can be imported into another EHR for patient care.  Their vacation unfolds happily until, many miles from home the patient experiences an episode of chest pain while hiking and is taken to a local emergency room.  He provides the flash drive with his electronic record summary to the emergency room physician whose hospital employs an EHR which can accept FHIR extracted electronic record summaries for integration into the on-site health record system.  The emergency room nurse loads the flash drive and accepts the electronic copy of the problem list, allergies and medication list into the on-site record.  The software extract manages the differences in information model design between EHR vendors by cross-checking the allergy list with information in the problem list and encounter diagnoses.
Later, the attending physician is writing admission orders for the patient, admitting him to the ward for observation.  The physician notices that the patient blood pressure is high at 195/100.  The physician does not want to take aggressive action but decides that the blood pressure should be brought down slowly.  Noting that the patient medication list already includes two types of blood pressure medicine, he enters an electronic order for “Hygroton 50mg po daily”, a favorite choice for hypertension with slow onset of action.  When the physician presses ‘Enter’ to commit the order, a pop-up alert is generated by the EHR with warning that this patient has had an allergic reaction to a thiazide diuretic consisting of hives and that Chlorthalidone (Hygroton) has a high likelihood of cross reacting.  While studying the alert, the physician notes that the supporting information was gleaned from the problem list and allergy list.  While the earlier record from the problem list was provisional, the later allergy list record is notable for probable status and moderate risk as an allergy.  The EHR drug interaction software has cross-referenced the chemical composition of Hydrochlorothiazide and Hygroton (Chlorthalidone) and noted them to be similar.  He decides that the information is credible and changes his order to a medicine not likely to lead to an allergic reaction."""
* subject = Reference(PatientExample1)
* code = $SCT#860765003 "Allergy to thiazide (finding)"
* code.text = "Probable thiazide allergy"
* clinicalStatus.coding[+] = $CondClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $CondVerStatus#provisional
* verificationStatus.coding[+] = $SCT#371930009 "Possible (qualifier)"
* verificationStatus.text = "Provisional"
* category = $CondCat#problem-list-item
* severity = $SCT#6736007 "Moderate (qualifier)"
* severity.text = "Moderate"

Instance: AllergyObservationExample4-5
InstanceOf: Observation
Description: """Scenario:
A physician sees a patient for the first time in clinic for routine outpatient care.  The patient tells the physician that he has begun to experience asthma symptoms.  The physician runs some blood tests and a series of skin tests which demonstrate an intense reaction to the house dust mite, Dermatophagoides farinae protein with high IgE antibody levels. The patient confirms that his wheezing occurs primarily at home, especially while lying in bed at night. The physician opens the allergy record and documents the allergic propensity to Dermatophagoides farinae protein, criticality and severity of low in the EHR allergy list."""
* code = $LOINC#6095-4 "American house dust mite IgE Ab [Units/volume] in Serum"
* status = #final
* category = $ObsCat#laboratory "Laboratory"
* valueQuantity = 59.1 'k[IU]/L'
* interpretation = $ObsInterpretation#high "High"
* specimen = Reference(AllergySpecimenExample1)

Instance: AllergySpecimenExample1
InstanceOf: Specimen
* subject = Reference(PatientExample1)
* type = $SCT#119364003 "Serum specimen"

Instance: AllergyIntoleranceExample4-5
InstanceOf: AllergyIntolerance-SubstanceFocused
Description: """Scenario:
A physician sees a patient for the first time in clinic for routine outpatient care.  The patient tells the physician that he has begun to experience asthma symptoms.  The physician runs some blood tests and a series of skin tests which demonstrate an intense reaction to the house dust mite, Dermatophagoides farinae protein with high IgE antibody levels. The patient confirms that his wheezing occurs primarily at home, especially while lying in bed at night. The physician opens the allergy record and documents the allergic propensity to Dermatophagoides farinae protein, criticality and severity of low in the EHR allergy list."""
* patient = Reference(PatientExample1)
* code = $SCT#711092006 "Dermatophagoides farinae protein (substance)"
* code.text = "Dermatophagoides farinae"
* type = #allergy
* clinicalStatus.coding[+] = $AIClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $AIVerStatus#confirmed
* verificationStatus.coding[+] = $SCT#4106005003 "Confirmed present (qualifier)"
* verificationStatus.text = "Confirmed"
* criticality = #low
// * category = #medication // Excluded from SNOMED profile as it overlaps semantically with code
* reaction.substance = $SCT#711092006 "Dermatophagoides farinae protein (substance)"
* reaction.substance.text = "Dermatophagoides farinae"
// * reaction.certainty = #confirmed 410605003 Confirmed present (qualifier value)
* reaction.manifestation = $SCT#195967001 "Asthma (disorder)"
* reaction.manifestation.text = "Asthma"
* reaction.severity = #mild
* reaction.exposureRoute = $SCT#447694001 "Respiratory tract route (qualifier value)"
* reaction.exposureRoute.text = "Topical" // ???

Instance: AllergyObservationExample4-6
InstanceOf: Observation
Description: """Scenario:
A patient's mother reports to their child's physician that the child reacts violently to eating peanuts with symptoms that include generalized hives, wheezing and hypotension requiring use of epinephrine for resuscitation.  The physician obtains a blood test which documents high levels of IgE antibody against the Arachis h2 peanut protein which is found in peanut oil (Arachis oil) - the sensitizing agent for clinical peanut allergy.  The physician records a peanut allergy in the EHR with anaphylaxis, hives and wheezing as reaction symptoms, records a criticality of high and reaction severity of ‘severe’.  
Years later the youngster is seen by a dermatologist for treatment of acne.  As part of the plan of care, the physician enters an electronic prescription for Isotretinoin capsules.  When the physician commits the order, the EHR software runs allergy cross checking and issues a high priority alert that the capsules contain peanut oil that is not highly refined and therefore may potentially include peanut protein and are contraindicated for the patient.  The physician cancels the order and chooses an alternative preparation."""
* code = $LOINC#58778-2 "Peanut recombinant (rAra h) 2 IgE Ab [Units/volume] in Serum"
* status = #final
* category = $ObsCat#laboratory "Laboratory"
* valueQuantity = 100 'k[IU]/L'
* valueQuantity.comparator = #>
* interpretation = $ObsInterpretation#high "High"
* specimen = Reference(AllergySpecimenExample1)

Instance: AllergyIntoleranceExample4-6
InstanceOf: AllergyIntolerance-SubstanceFocused
Description: """Scenario:
A patient's mother reports to their child's physician that the child reacts violently to eating peanuts with symptoms that include generalized hives, wheezing and hypotension requiring use of epinephrine for resuscitation.  The physician obtains a blood test which documents high levels of IgE antibody against the Arachis h2 peanut protein which is found in peanut oil (Arachis oil) - the sensitizing agent for clinical peanut allergy.  The physician records a peanut allergy in the EHR with anaphylaxis, hives and wheezing as reaction symptoms, records a criticality of high and reaction severity of ‘severe’.  
Years later the youngster is seen by a dermatologist for treatment of acne.  As part of the plan of care, the physician enters an electronic prescription for Isotretinoin capsules.  When the physician commits the order, the EHR software runs allergy cross checking and issues a high priority alert that the capsules contain peanut oil that is not highly refined and therefore may potentially include peanut protein and are contraindicated for the patient.  The physician cancels the order and chooses an alternative preparation."""
* patient = Reference(PatientExample1)
* code = $SCT#417889008 "Arachis oil (substance)"
* code.text = "Peanut oil"
* type = #allergy
* clinicalStatus.coding[+] = $AIClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $AIVerStatus#confirmed
* verificationStatus.coding[+] = $SCT#4106005003 "Confirmed present (qualifier)"
* verificationStatus.text = "Confirmed"
* criticality = #high
// * category = #medication // Excluded from SNOMED profile as it overlaps semantically with code
* reaction.substance = $SCT#417889008 "Arachis oil (substance)"
* reaction.substance.text = "Peanut oil"
// * reaction.certainty = #confirmed 4106050Instance: AllergyConditionExample4-4
* reaction.manifestation = $SCT#39579001 "Anaphylaxis (disorder)"
* reaction.manifestation.text = "Anaphylaxis"
* reaction.severity = #severe
* reaction.exposureRoute = $SCT#26643006 "Oral route (qualifier)"
* reaction.exposureRoute.text = "Oral" 

Instance: AllergyObservationExample4-7
InstanceOf: Observation
Description: """Scenario:
A licensed nurse presents to her personal physician for recurring problems of a generalized rash and itching.  She works in an intensive care unit and is constantly handing chemicals, disinfectants, assisting in surgical procedures and performing catheter cares for her patients.  As a part of the health history, she verifies that she has noticed an eruption on her hands after handling latex catheters.  Additionally, she reports a serious allergic reaction to papaya in the past and has been careful in the fruits she eats as a consequence.  The clinician suspects a latex allergy cross-reacting with food stuffs and orders IgE testing for Hevea latex antibody.  The serology testing is strongly positive and the clinician advises the nurse of his findings with warnings about other foods which may cross react.  While documenting the clinical encounter, he records a latex allergy in the allergy list.
The EHR software supports selection of foods, chemicals and animal biological products as substances which may be identified as source substances for an entry onto the allergy list or for recording of an adverse reaction."""
* code = $LOINC#6158-0 "Latex IgE Ab [Units/volume] in Serum"
* status = #final
* category = $ObsCat#laboratory "Laboratory"
* valueQuantity = 100 'k[IU]/L'
* valueQuantity.comparator = #>
* interpretation = $ObsInterpretation#high "High"
* specimen = Reference(AllergySpecimenExample1)

Instance: AllergyConditionExample4-7
InstanceOf: Condition
Description: """Scenario:
A licensed nurse presents to her personal physician for recurring problems of a generalized rash and itching.  She works in an intensive care unit and is constantly handing chemicals, disinfectants, assisting in surgical procedures and performing catheter cares for her patients.  As a part of the health history, she verifies that she has noticed an eruption on her hands after handling latex catheters.  Additionally, she reports a serious allergic reaction to papaya in the past and has been careful in the fruits she eats as a consequence.  The clinician suspects a latex allergy cross-reacting with food stuffs and orders IgE testing for Hevea latex antibody.  The serology testing is strongly positive and the clinician advises the nurse of his findings with warnings about other foods which may cross react.  While documenting the clinical encounter, he records a latex allergy in the allergy list.
The EHR software supports selection of foods, chemicals and animal biological products as substances which may be identified as source substances for an entry onto the allergy list or for recording of an adverse reaction."""
* subject = Reference(PatientExample1)
* code = $SCT#1003755004 "Allergy to Hevea brasiliensis latex protein (finding)"
* code.text = "Latex allergic propensity"
* clinicalStatus.coding[+] = $CondClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $CondVerStatus#confirmed
* verificationStatus.coding[+] = $SCT#4106005003 "Confirmed present (qualifier)"
* verificationStatus.text = "Confirmed"
* category = $CondCat#problem-list-item
* severity = $SCT#6736007 "Moderate (qualifier)"
* severity.text = "Moderate"

Instance: AllergyIntoleranceExample4-7
InstanceOf: AllergyIntolerance-SubstanceFocused
Description: """Scenario:
A licensed nurse presents to her personal physician for recurring problems of a generalized rash and itching.  She works in an intensive care unit and is constantly handing chemicals, disinfectants, assisting in surgical procedures and performing catheter cares for her patients.  As a part of the health history, she verifies that she has noticed an eruption on her hands after handling latex catheters.  Additionally, she reports a serious allergic reaction to papaya in the past and has been careful in the fruits she eats as a consequence.  The clinician suspects a latex allergy cross-reacting with food stuffs and orders IgE testing for Hevea latex antibody.  The serology testing is strongly positive and the clinician advises the nurse of his findings with warnings about other foods which may cross react.  While documenting the clinical encounter, he records a latex allergy in the allergy list.
The EHR software supports selection of foods, chemicals and animal biological products as substances which may be identified as source substances for an entry onto the allergy list or for recording of an adverse reaction."""
* patient = Reference(PatientExample1)
* code = $SCT#1003751008 "Hevea barasiliensis latex (substance)"
* code.text = "Latex"
* type = #allergy
* extension[allergy-intolerance-detailed-type].valueCodeableConcept = $SCT#609328004 "Allergic disposition (finding)"
* clinicalStatus.coding[+] = $AIClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $AIVerStatus#confirmed
* verificationStatus.coding[+] = $SCT#4106005003 "Confirmed present (qualifier)"
* verificationStatus.text = "Confirmed"
* criticality = #low
// * category = #medication // Excluded from SNOMED profile as it overlaps semantically with code
* reaction.substance = $SCT#1003751008 "Hevea barasiliensis latex (substance)"
* reaction.substance.text = "Latex"
// * reaction.certainty = #confirmed 4106050Instance: AllergyConditionExample4-4
* reaction.manifestation[+] = $SCT#271807003 "Eruption of skin (disorder)"
* reaction.manifestation[=].text = "Rash"
* reaction.manifestation[+] = $SCT#418290006 "Itching (finding)"
* reaction.manifestation[=].text = "Itching"
* reaction.severity = #mild
* reaction.exposureRoute = $SCT#6064005 "Topical route (qualifier)"
* reaction.exposureRoute.text = "Topical" 

Instance: AllergyIntoleranceExample4-8
InstanceOf: AllergyIntolerance
Description: """Scenario:
A nurse is performing an intake examination on a patient that is new to the clinical practice.  As part of the clinical interview he inquires about medication and other allergies.  The patient reports that she is not allergic to any medications, foods, chemicals or animals.  The nurse opens the ‘allergy list’ in the EHR and documents ‘No known allergies’ which electronically validates that the nurse inquired of the patient and that the history was confirmed negative at the date and time recorded.  This satisfies decision support criteria that allergies be documented before medication orders are written and is encoded in the EHR allergy list as confirmed absence of dispositions to adverse reactions."""
* patient = Reference(PatientExample1)
* code = $SCT#716186003 "No known allergy (situation)"
* code.text = "No known allergies"
* clinicalStatus.coding[+] = $AIClinStatus#active
* clinicalStatus.coding[+] = $SCT#55561003 "Active (qualifier value)"
* clinicalStatus.text = "Active"
* verificationStatus.coding[+] = $AIVerStatus#confirmed
* verificationStatus.coding[+] = $SCT#4106005003 "Confirmed present (qualifier)"
* verificationStatus.text = "Confirmed"



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
* name[1].family = "Goode"
* gender = #male
* birthDate = "1958-01-06"
* address.line = "2120 S Michigan Ave"
* address.city = "Chicago"
* address.postalCode = "60616"
* address.country = "US"