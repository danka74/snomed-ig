Alias: SCT = http://snomed.info/sct

Instance: DrugValueSetExample1
InstanceOf: ValueSet
Description: "Example of drug concepts with multiple designations with different use contexts"
* status = #draft
* experimental = true
* expansion.timestamp = 2020-12-25T09:57:34.2112Z
* expansion.contains[0].system = SCT
* expansion.contains[0].code = #428641000

* expansion.contains[0].designation[0].value = "Capsule"
* expansion.contains[0].designation[0].language = #en
* expansion.contains[0].designation[0].use = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[0].extension[designation-use-context][0].extension[context].valueCoding = #900000000000509007 "US English"
* expansion.contains[0].designation[0].extension[designation-use-context][0].extension[use].valueCoding = #acceptable "Acceptable"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[context].valueCoding = #professional-use-context "Professional use"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[use].valueCoding = #preferred "Preferred"
* expansion.contains[0].designation[0].extension[designation-use-context][2].extension[context].valueCoding = #patient-friendly-use-context "Patient-friendly use"
* expansion.contains[0].designation[0].extension[designation-use-context][2].extension[use].valueCoding = #preferred "Preferred"

* expansion.contains[0].designation[1].value = "Caps"
* expansion.contains[0].designation[1].language = #en
* expansion.contains[0].designation[1].use = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[context].valueCoding = #medicine-abbreviation-use-context "Abbreviation use"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[use].valueCoding = #preferred "Preferred"

* expansion.contains[0].designation[2].value = "Capsules"
* expansion.contains[0].designation[2].language = #en
* expansion.contains[0].designation[2].use = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[context].valueCoding = #medicine-plural-use-context "Plural use"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[use].valueCoding = #preferred "Preferred"


Instance: DrugValueSetExample2
InstanceOf: ValueSet
Description: "Example of drug concepts with multiple designations with different use contexts"
* status = #draft
* experimental = true
* expansion.timestamp = 2020-12-25T09:57:34.2112Z
* expansion.contains[0].system = SCT
* expansion.contains[0].code = #258701004

* expansion.contains[0].designation[0].value = "minute"
* expansion.contains[0].designation[0].language = #en
* expansion.contains[0].designation[0].use = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[0].extension[designation-use-context][0].extension[context].valueCoding = SCT#900000000000509007 "US English"
* expansion.contains[0].designation[0].extension[designation-use-context][0].extension[use].valueCoding = SCT#900000000000549004 "Acceptable"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63461000052102 "Professional use"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[use].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[0].extension[designation-use-context][2].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63461000052102#63451000052100 "Patient-friendly use"
* expansion.contains[0].designation[0].extension[designation-use-context][2].extension[use].valueCoding = SCT#900000000000548007 "Preferred"

* expansion.contains[0].designation[1].value = "min"
* expansion.contains[0].designation[1].language = #en
* expansion.contains[0].designation[1].use = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63461000052102#63491000052105 "Abbreviation use"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[use].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[1].extension[designation-use-context][1].extension[context].valueCoding = SCT#900000000000509007 "US English"
* expansion.contains[0].designation[1].extension[designation-use-context][1].extension[use].valueCoding = SCT#900000000000548007 "Preferred"


* expansion.contains[0].designation[2].value = "minutes"
* expansion.contains[0].designation[2].language = #en
* expansion.contains[0].designation[2].use = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63461000052102#63481000052108 "Plural use"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[use].valueCoding = SCT#900000000000548007 "Preferred"
