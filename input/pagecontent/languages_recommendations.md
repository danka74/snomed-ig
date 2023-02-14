## BCP-47 profile for SNOMED CT and FHIR

The [BCP-47](https://www.ietf.org/rfc/bcp/bcp47.txt) specification allows extensibility by specification of a language tag (using ISO 639-1) with a region (e.g. en-us for US English) or by a "private use tag" extension (e.g. en-nz-x-pat corresponding to the New Zealand English patient-friendly language reference set). Further, a private use tag syntax for directly referring to language reference sets by id is available (e.g. en-x-sctlang-32570271-00003610-6 for the Australian English language reference set).

Note that, according to the BCP-47 specification, there must be a minus sign at least every 9th character of the private use tag.

Examples:
* `es-uy` for Uruguay Spanish
* `en-nz-x-pat` for New Zealand English patient-friendly language reference set
* `en-x-sctlang-32570271-00003610-6` for Australian English language reference set

A set of SNOMED CT dialect aliases, and their language reference set correspondents is given in the [ECL specification, Appendix C](https://confluence.ihtsdotools.org/display/DOCECL/Appendix+C+-+Dialect+Aliases).

Excerpt from ABNF for BCP-47:

```
 Language-Tag  = langtag             ; normal language tags
               / privateuse          ; private use tag

 langtag       = language
                 ["-" region]
                 ["-" privateuse]

 privateuse    = "x" 1*("-" (1*8alphanum))
```

ABNF for SNOMED CT language reference set private use tags:
```
 sctprivateuse    = "x-sctlang" 1*("-" (1*8DIGIT))
```
## Use of designation.use and/or \$expand.designation and BCP-47

Recommendations for how to represent SNOMED CT descriptions and language reference set members as FHIR designations using existing elements and BCP-47 language tags.

### SNOMED CT Synonym

| | Preferred | Acceptable |
|---|---|---|
| "default" language refset for language | language = `<lang tag>-x-<default-lang-refset>` or a known dialect tag<br/>use = `display` (or `preferredForLanguage`) | language = `<lang tag>-x-<default-lang-refset>` or a known dialect tag<br/>use = <code>900000000000013009&#124;Synonym&#124;</code> (Note: non-standard semantics of SNOMED CT Synonym concept) | 
| Consumer lang. refset	| language = `<lang tag>-x-<consumer-lang-refset>` or known dialect tag<br/>use = `consumer` | language = `<lang tag>-x-<consumer-lang-refset>` or known dialect tag<br/>use = `consumer` (Note: this is identical to Preferred) |
| Non-consumer lang. refset | language = `<lang tag>-x-<lang-refset>` or known dialect tag<br/> use = `display` (or `preferredForLanguage`) | language = `<lang tag>-x-<lang-refset>` or known dialect tag<br/>  use = <code>900000000000013009&#124;Synonym&#124;</code> (Note: non-standard semantics of SNOMED CT Synonym concept) |
||||

### SNOMED CT Fully Specified Name

| | Preferred | Acceptable |
|---|---|---|
| "default" language refset for language | language = `<lang tag>-x-<default-lang-refset>` or a known dialect tag<br/>use = <code>900000000000003001&#124;Fully specified name&#124;</code> | N/A |
| Consumer lang. refset	| Unlikely | N/A |
| Non-consumer lang. refset | Unlikely | N/A |
||||

### SNOMED CT Text Definition

Also a possibility to use only CodeSystem.concept.definition, but does not allow distinction of different definitions per context/language reference set and is not used in ValueSet resource.

| | Preferred | Acceptable |
|---|---|---|
| "default" language refset for language |  | N/A? |
| Consumer lang. refset	| language = `<lang tag>-x-<consumer-lang-refset>` or known dialect tag<br/>use = <code>900000000000550004&#124;Definition&#124;</code> OR "consumer" | N/A? |
| Non-consumer lang. refset | language = `<lang tag>-x-<lang-refset>`<br/>use = <code>900000000000550004&#124;Definition&#124;</code> | N/A? |
||||

