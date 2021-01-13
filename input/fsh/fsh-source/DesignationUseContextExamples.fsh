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
* expansion.contains[0].designation[0].extension[designation-use-context][0].extension[context].valueCoding = SCT#900000000000509007 "US English"
* expansion.contains[0].designation[0].extension[designation-use-context][0].extension[role].valueCoding = SCT#900000000000549004 "Acceptable"
* expansion.contains[0].designation[0].extension[designation-use-context][0].extension[type].valueCoding = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63461000052102 "Professional use"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[type].valueCoding = SCT#900000000000013009 "Synonym"

* expansion.contains[0].designation[1].value = "Capsule"
* expansion.contains[0].designation[1].language = #en
* expansion.contains[0].designation[1].use = #consumer "Consumer-friendly term"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63451000052100 "Patient-friendly use"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[type].valueCoding = SCT#900000000000013009 "Synonym"


* expansion.contains[0].designation[2].value = "Caps"
* expansion.contains[0].designation[2].language = #en
* expansion.contains[0].designation[2].use = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63491000052105 "Abbreviation use"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[type].valueCoding = SCT#900000000000013009 "Synonym"


* expansion.contains[0].designation[3].value = "Capsules"
* expansion.contains[0].designation[3].language = #en
* expansion.contains[0].designation[3].use = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[3].extension[designation-use-context][0].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63481000052108 "Plural use"
* expansion.contains[0].designation[3].extension[designation-use-context][0].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[3].extension[designation-use-context][0].extension[type].valueCoding = SCT#900000000000013009 "Synonym"

* expansion.contains[0].designation[4].value = "Capsule - unit of product usage (qualifier value)"
* expansion.contains[0].designation[4].language = #en
* expansion.contains[0].designation[4].use = SCT#900000000000003001 "Fully specified name"
* expansion.contains[0].designation[4].extension[designation-use-context][0].extension[context].valueCoding = SCT#900000000000509007 "US English"
* expansion.contains[0].designation[4].extension[designation-use-context][0].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[4].extension[designation-use-context][0].extension[type].valueCoding = SCT#900000000000003001 "Fully specified name"



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
* expansion.contains[0].designation[0].extension[designation-use-context][0].extension[role].valueCoding = SCT#900000000000549004 "Acceptable"
* expansion.contains[0].designation[0].extension[designation-use-context][0].extension[type].valueCoding = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63461000052102 "Professional use"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[0].extension[designation-use-context][1].extension[type].valueCoding = SCT#900000000000013009 "Synonym"

* expansion.contains[0].designation[1].value = "minute"
* expansion.contains[0].designation[1].language = #en
* expansion.contains[0].designation[1].use = #consumer "Consumer-friendly term"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63451000052100 "Patient-friendly use"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[1].extension[designation-use-context][0].extension[type].valueCoding = SCT#900000000000013009 "Synonym"


* expansion.contains[0].designation[2].value = "min"
* expansion.contains[0].designation[2].language = #en
* expansion.contains[0].designation[2].use = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63491000052105 "Abbreviation use"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[2].extension[designation-use-context][0].extension[type].valueCoding = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[2].extension[designation-use-context][1].extension[context].valueCoding = SCT#900000000000509007 "US English"
* expansion.contains[0].designation[2].extension[designation-use-context][1].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[2].extension[designation-use-context][1].extension[type].valueCoding = SCT#900000000000013009 "Synonym"


* expansion.contains[0].designation[3].value = "minutes"
* expansion.contains[0].designation[3].language = #en
* expansion.contains[0].designation[3].use = SCT#900000000000013009 "Synonym"
* expansion.contains[0].designation[3].extension[designation-use-context][0].extension[context].valueCoding = http://snomed.info/sct|http://snomed.info/sct/45991000052106#63481000052108 "Plural use"
* expansion.contains[0].designation[3].extension[designation-use-context][0].extension[role].valueCoding = SCT#900000000000548007 "Preferred"
* expansion.contains[0].designation[3].extension[designation-use-context][0].extension[type].valueCoding = SCT#900000000000013009 "Synonym"
