## Use of designation.use and/or \$expand.designation and BCP-47

Recommendations for how to represent SNOMED CT descriptions as FHIR designations using existing elements and BCP-47 language tags.

### SNOMED CT Synonym

| | Preferred | Acceptable |
|---|---|---|
| "default" language refset for language | language = lang tag-X-default-lang-refset, use = "display" (or "preferredForLanguage") | language = lang tag-X-default-lang-refset, use = 900000000000013009&#124;Synonym (core metadata concept)&#124; |
| Consumer lang. refset	| language = lang tag-X-consumer-lang-refset, use = "consumer" | language = lang tag-X-consumer-lang-refset, use = "consumer" (Note: this is identical to Preferred) |
| Non-consumer lang. refset | language = lang tag-X-lang-refset, use = "display" (or "preferredForLanguage") | language = lang tag-X-lang-refset,  use = 900000000000013009&#124;Synonym (core metadata concept)&#124; (Note: non-standard semantics of SNOMED CT Synonym) |
||||

### SNOMED CT Fully Specified Name

| | Preferred | Acceptable |
|---|---|---|
| "default" language refset for language | language = lang tag-X-default-lang-refset, use = 900000000000003001&#124;Fully specified name (core metadata concept)&#124; | N/A |
| Consumer lang. refset	| Unlikely | N/A |
| Non-consumer lang. refset | Unlikely | N/A |
||||

### SNOMED CT Text Definition

Also a possibility to use only CodeSystem.concept.definition, but does not allow distinction of different definitions per context/language reference set and is not used in ValueSet resource.

| | Preferred | Acceptable |
|---|---|---|
| "default" language refset for language |  | N/A? |
| Consumer lang. refset	| language = lang tag-X-default-lang-refset, use = 900000000000550004&#124;Definition (core metadata concept)&#124; OR "consumer" | N/A? |
| Non-consumer lang. refset | language = lang tag-X-default-lang-refset, use = 900000000000550004&#124;Definition (core metadata concept)&#124; | N/A? |
||||

