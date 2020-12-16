Alias: 

Instance: DrugValueSet
InstanceOf: ValueSet
Description: "Example of multiple contextual uses"
* id = "CodeSystemDesignationUseExample1"
* status = #draft
* content = #fragment
* concept[0].code = SCT#428641000
* concept[0].designation[0].value = "A term"
* concept[0].designation[0].language = #en
* concept[0].designation[0].use = #900000000000013009
* concept[0].designation[0].extension[designation-use-context][0].extension[code].valueCoding.code = #patient-friendly-refset
* concept[0].designation[0].extension[designation-use-context][0].extension[role].valueCoding.code = #preferred
* concept[0].designation[0].extension[designation-use-context][1].extension[code].valueCoding.code = #patient-unfriendly-refset
* concept[0].designation[0].extension[designation-use-context][1].extension[role].valueCoding.code = #avoid
