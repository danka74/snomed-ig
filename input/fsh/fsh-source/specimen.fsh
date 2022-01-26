Profile:        SnomedSpecimen
Parent:         Specimen
Id:             snomed-specimen
Title:          "Specimen"
Description:    "Profile of the Specimen resource for use with SNOMED CT coding."
* type 1..1
* type from SpecimenTypeValueSet (extensible) // <<123038009 | Specimen (specimen) |
* collection.method from SpecimenCollectionMethodValueSet (extensible) // overlapping with 118171006 | Specimen procedure (attribute) |
* collection.bodySite from SpecimenCollectionBodySiteValueSet (extensible) // overlapping with 118169006 | Specimen source topography (attribute) |
* processing.procedure from SpecimenProcessingProcedureValueSet (extensible) // no overlap in the concept model


