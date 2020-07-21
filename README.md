# SNOMED CT FHIR Implementation Guide

This IG uses [FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/).

To install (tested with version 0.14.0):
```
npm install -g fsh-sushi
```

To build using HL7 IG Publisher and Ontoserver:
```
cd snomed-ig-fsh
java -Xmx4G -jar org.hl7.fhir.publisher.jar -ig . -tx https://r4.ontoserver.csiro.au/fhir
```
