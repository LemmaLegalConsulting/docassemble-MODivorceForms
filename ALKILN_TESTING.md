The existing test_baseline.feature is a complete petitioner-with-child path through main.yml to download MO divorce forms, followed by downloads of the generated PDF forms. Its terminal-screen assertion is explicit.

The default isolated workflow runs the existing suite except scenarios already tagged @known_gap in this repository. Those validation cases describe deliberately unimplemented product behavior and are expected to fail; this change does not newly tag or disable any case. Run them by manual workflow dispatch with tags `@known_gap`, or run everything with tags `not @__no_such_tag__`. The complete baseline remains in the default run.

Browser validation in the isolated workflow is authoritative; the fixture is retained from its original recorded browser run.

Source startup repair: removed an obsolete duplicate publication attachment stub from shared.yml that pointed at nonexistent service_by_publication.docx. The real service_by_publication.yml include already defines the populated PDF attachment using the existing service_by_publication.pdf.

The isolated server is pinned to docassemble 1.10.12 (verified amd64 registry digest). Server and worker diagnostics are printed on failure.

Clean-server installer diagnostics identified nginx HTTP 413 before browser execution: this document package exceeds the default 16 MiB API upload cap. The isolated workflow now sets `maximum content length: 67108864` (64 MiB) in its disposable server configuration so the unmodified package can upload. Full baseline execution is pending the corrected run.

The recorded fixtures now select she/her pronouns consistently with their synthetic party profiles. Redundant false pronoun checkbox rows were removed: with current ALKiln/browser markup they selected the self-described option and opened an unanswered required text field. This corrects fixture input; it does not bypass pronoun validation.
