The existing test_baseline.feature is a complete petitioner-with-child path through main.yml to download MO divorce forms, followed by downloads of the generated PDF forms. Its terminal-screen assertion is explicit.

The default isolated workflow runs the existing suite except scenarios already tagged @known_gap in this repository. Those validation cases describe deliberately unimplemented product behavior and are expected to fail; this change does not newly tag or disable any case. Run them by manual workflow dispatch with tags `@known_gap`, or run everything with tags `not @__no_such_tag__`. The complete baseline remains in the default run.

Browser validation in the isolated workflow is authoritative; the fixture is retained from its original recorded browser run.

Source startup repair: removed an obsolete duplicate publication attachment stub from shared.yml that pointed at nonexistent service_by_publication.docx. The real service_by_publication.yml include already defines the populated PDF attachment using the existing service_by_publication.pdf.
