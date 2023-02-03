# Overview of SNOMED CT language features in FHIR 

SNOMED CT has extensive functionality for working with multiple natural languages, e.g. supporting multiple descriptions in different languages for the same concept, or multiple descriptions for use in different contexts for the same concept. This section aims to explain how to use the SNOMED CT language features with [FHIR Terminology Services](http://hl7.org/fhir/terminology-service.html).

The language features of both frameworks depend on if the feature is intended to support representation of content within the framework or if the feature is intended to allow querying of content. These two aspects may overlap.

## Representation features

### Mapping SNOMED CT and FHIR language features

SNOMED CT has two main language components: [Descriptions](https://confluence.ihtsdotools.org/display/DOCGLOSS/description) and [Language reference sets](https://confluence.ihtsdotools.org/display/DOCGLOSS/language+reference+set). The closest matching elements in FHIR are [designation](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation) and [designation.use](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation.use), which are found in the [CodeSystem](http://hl7.org/fhir/codesystem.html) and [ValueSet](http://hl7.org/fhir/valueset.html) resources. However, the match is not one to one and some features of SNOMED CT are missing. An overview of the correspondance between SNOMED CT and FHIR is shown in Table X below:

| SNOMED CT | FHIR | Comment |
|---|---|---|
| [Description](https://confluence.ihtsdotools.org/display/DOCGLOSS/description)  | [designation](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation) ||
| [Description.languageCode](https://confluence.ihtsdotools.org/display/DOCRELFMT/4.2.2+Description+File+Specification) | [designation.language](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation.language) | SNOMED CT uses two-character ISO-639-1 codes only, i.e. without any dialect, while FHIR allows more expressive [BCP-47](https://www.ietf.org/rfc/bcp/bcp47.txt) coding |
| [Description.typeId](https://confluence.ihtsdotools.org/display/DOCRELFMT/4.2.2+Description+File+Specification) | [designation.use](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation.use) | In SNOMED CT, the allowed values for Description.typeId are <code><900000000000446008&#124;Description type&#124;</code>, currently including `900000000000003001\|Fully specified name\|`, `900000000000013009\|Synonym\|`, and `900000000000550004\|Definition\|`. The FHIR ValueSet for designation.use includes two of those codes: `900000000000003001\|Fully specified name\|` and `900000000000013009\|Synonym\|`. The FHIR binding is extensible. |
| [Language reference sets](https://confluence.ihtsdotools.org/display/DOCGLOSS/language+reference+set) | [designation.use](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation.use) | The FHIR binding includes the two SNOMED codes mentioned above, but is extensible. Currently, [addition of a code for "consumer" is being discussed](https://jira.hl7.org/browse/UP-107). |


### SNOMED CT langages and Standard HTTP language features

There is a good match between the SNOMED CT and FHIR language features, and most SNOMED CT features can be realized using FHIR or standard HTTP language features.

## Querying SNOMED CT using FHIR language features

### $expand query parameters

designation
