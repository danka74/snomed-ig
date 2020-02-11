
### Maturity Levels 

All artifacts in this specification are assigned a "Maturity Level", known as FMM (after the well-known [CMM](http://en.wikipedia.org/wiki/Capability_Maturity_Model) grades). The FMM level can be used by implementers to judge how advanced - and therefore stable - an artifact is. The following FMM levels are defined:

**TODO** *These are the levels and conditions defined by HL7. The conditions refer to HL7 processes and guidelines. These need to be reviewed, revised and updated by the SNOMED on FHIR WG.*

**Draft (0)** |	the resource or profile (artifact) has been published on the current build. This level is synonymous with Draft
**FMM 1** |	PLUS the artifact produces no warnings during the build process and the responsible WG has indicated that they consider the artifact substantially complete and ready for implementation. For resources, profiles and implementation guides, the FHIR Management Group has approved the underlying resource/profile/IG proposal
**FMM 2** |	PLUS the artifact has been tested and successfully supports interoperability among at least three independently developed systems leveraging most of the scope (e.g. at least 80% of the core data elements) using semi-realistic data and scenarios based on at least one of the declared scopes of the artifact (e.g. at a connectathon). These interoperability results must have been reported to and accepted by the FMG
**FMM 3** |	PLUS + the artifact has been verified by the work group as meeting the Conformance Resource Quality Guidelines ; has been subject to a round of formal balloting; has at least 10 distinct implementer comments recorded in the tracker drawn from at least 3 organizations resulting in at least one substantive change
**FMM 4** |	PLUS the artifact has been tested across its scope (see below), published in a formal publication (e.g. Trial-Use), and implemented in multiple prototype projects. As well, the responsible work group agrees the artifact is sufficiently stable to require implementer consultation for subsequent non-backward compatible changes
**FMM 5** |	the artifact has been published in two formal publication release cycles at FMM1+ (i.e. Trial-Use level) and has been implemented in at least 5 independent production systems in more than one country
**Normative** |	the artifact is now considered stable

Tested across scope means:

The FMG  has signed off on the list of "example contexts" defined for the artifact
For each example context, the artifact has either been: reviewed and approved by a domain expert for that scope area, mapped to an existing implemented scope-area-specific standard or tested in an implementation
The Maturity level is strongly related to stability; the higher the maturity level, the more controls are enforced to restrict breaking changes to the resource. For further information, and discussion, see the FHIR Confluence page .

The maturity model is significantly influenced by the degree and type of implementation activity using an artifact. For this reason, we encourage implementers to register their implementations . A detailed analysis of the basis for the maturity metrics for FHIR artifacts can be found here .


