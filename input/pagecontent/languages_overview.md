# Overview of SNOMED CT language features in FHIR 

SNOMED CT has extensive functionality for working with multiple natural languages, e.g. supporting multiple descriptions in different languages for the same concept, or multiple descriptions for use in different contexts for the same concept. This section aims to explain how to use the SNOMED CT language features with [FHIR Terminology Services](http://hl7.org/fhir/terminology-service.html) and [FHIR Multi-lingual support](https://www.hl7.org/fhir/languages.html).

The language features of both frameworks depend on if the feature is intended to support representation of content within the framework or if the feature is intended to allow querying of content. These two aspects may overlap.

## Representation features

### Mapping SNOMED CT component and FHIR Resource language features

SNOMED CT has two main language components: [Descriptions](https://confluence.ihtsdotools.org/display/DOCGLOSS/description) and [Language reference sets](https://confluence.ihtsdotools.org/display/DOCGLOSS/language+reference+set). The closest matching elements in FHIR are [designation](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation) and [designation.use](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation.use), which are found in the [CodeSystem](http://hl7.org/fhir/codesystem.html) and [ValueSet](http://hl7.org/fhir/valueset.html) resources. However, the match is not one to one and some features of SNOMED CT are missing. An overview of the correspondence between SNOMED CT and FHIR is shown in the table below:

| SNOMED CT | FHIR | Comment |
|---|---|---|
| [Description](https://confluence.ihtsdotools.org/display/DOCGLOSS/description)  | [designation](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation) ||
| [Description.languageCode](https://confluence.ihtsdotools.org/display/DOCRELFMT/4.2.2+Description+File+Specification) | [designation.language](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation.language) | SNOMED CT uses two-character ISO-639-1 codes only, i.e. without any dialect, while FHIR allows more expressive [BCP-47](https://www.ietf.org/rfc/bcp/bcp47.txt) coding. This Internet standard allows representation of additional SNOMED CT language features beyond the language itself. |
| [Description.typeId](https://confluence.ihtsdotools.org/display/DOCRELFMT/4.2.2+Description+File+Specification) | [designation.use](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation.use) | In SNOMED CT, the allowed values for Description.typeId are <code><900000000000446008&#124;Description type&#124;</code>, currently including <code>900000000000003001&#124;Fully specified name&#124;</code>, <code>900000000000013009&#124;Synonym&#124;</code>, and <code>900000000000550004&#124;Definition&#124;</code>. The FHIR ValueSet for designation.use includes two of those codes: <code>900000000000003001&#124;Fully specified name&#124;</code> and <code>900000000000013009&#124;Synonym&#124;</code>. The FHIR binding is extensible. |
| [Language reference sets](https://confluence.ihtsdotools.org/display/DOCGLOSS/language+reference+set) | [designation.use](http://hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.designation.use) | The FHIR binding includes the two SNOMED codes mentioned above, but is extensible. Currently, [addition of a code for "consumer" is being discussed](https://jira.hl7.org/browse/UP-107). Additional values "display" and "preferredForLanguage" is also in discussion. |
| Description.typeId = <code>900000000000550004&#124;Definition&#124;</code> |  [CodeSystem.concept.definition](https://www.hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.definition) | SNOMED CT text definitions could be represented in the FHIR CodeSystem resource, but there is no definition element in the ValueSet resource, particularly not in expansion.contains. |
|||

## Querying SNOMED CT using FHIR language features

### ECL language query features

> ECL is also used for representation in e.g. MRCM...

The [Description filter](https://confluence.ihtsdotools.org/display/DOCECL/6.8+Description+Filters) of ECL allows filtering by language and dialect. 

### SNOMED CT langages and Standard HTTP language features

There is a good match between the SNOMED CT and FHIR language features, and most SNOMED CT features can be realized using FHIR or standard HTTP language features.

Particularly, FHIR servers should in general [recognize HTTP Accept-language headers](https://www.hl7.org/fhir/languages.html##http). The semantics of the HTTP Accept-language header is described in [RFC9110](https://www.rfc-editor.org/rfc/rfc9110.html#name-accept-language) but refers to [BCP-47](https://www.ietf.org/rfc/bcp/bcp47.txt).

> What is the order of precedence between FHIR parameters and HTTP headers?



### FHIR operations

Only operations \$expand and \$lookup allow specification of language to be used in a query.

### $expand, $lookup query parameters

FHIR query 

* \$expand.designation - 	
A token that specifies a system+code that is either a use or a language. Designations that match by language or use are included in the expansion. If no designation is specified, it is at the server discretion which designations to return
* \$expand.displayLanugage - Specifies the language to be used for description in the expansions i.e. the language to be used for ValueSet.expansion.contains.display.
* \$lookup.displayLanguage - Same as above.

> Note that [\$expand.includeDefinition](https://www.hl7.org/fhir/valueset-operation-expand.html) refers to the value set definition (i.e. [ValueSet.compose](https://www.hl7.org/fhir/valueset-definitions.html#ValueSet.compose)) and not [CodeSystem.concept.definition](https://www.hl7.org/fhir/codesystem-definitions.html#CodeSystem.concept.definition).




