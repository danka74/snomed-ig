SNOMED CT ECL in FHIR 
=====================

## What is Expression Constraint Language ECL?

Expression Constraint Language is a standardised way of selecting SNOMED CT concepts within a SNOMED CT code system.

Some of the most frequently used [ECL operators](https://confluence.ihtsdotools.org/display/DOCECL/Appendix+D+-+ECL+Quick+Reference) are listed here:

| Symbol | Meaning |
| ------ | --------- |
|<|Descendants Of|
|<<|Descendants and Self|
|:  =|Where,  Having Value|
|^|Member Of|
|*|Any|
|MINUS, AND, OR, ( )|Logical Operations|

See also:
- [ECL examples](https://confluence.ihtsdotools.org/display/DOCECL/6.+Examples)
- [ECL Guide](http://snomed.org/ecl)


## Where is ECL used in FHIR?

ECL can be used in the definition of ValueSets, either as part of the ValueSet definition or, at runtime, as part of an Implicit ValueSet where the ECL statement can be specified as part of an HTTP GET Request.

### Benefits of ECL in FHIR ValueSets

The great advantage of using ECL in the definition of a FHIR ValueSet is that the selection will evolve with successive releases of a particular SNOMED CT Edition. Inactivated concepts will be removed, and new ones will be added, as long as they continue to meet the ECL selection criteria.

So if it is desired that the set of concepts in a ValueSet should remain _fixed_ for all time, then it is suggested that the include.version element should be populated so that the ValueSet would always be expanded against that particular release.

### Using ECL in Implicit Valueset Expansions

ECL can be specified in an HTTP Get request to provide a really lightweight way of selecting concepts. This allows developers to provide User Interface elements that are tightly bound to the context that they're used in.  For example, only showing Surgical Procedures that start with the letters "APP".

GET [`/ValueSet/$expand?url=http://snomed.info/sct?fhir_vs=ecl/<<387713003&filter=APP`](https://snowstorm.ihtsdotools.org/fhir/ValueSet/$expand?url=http://snomed.info/sct?fhir_vs=ecl/%3C%3C387713003&filter=APP)


## Examples of ECL usage






