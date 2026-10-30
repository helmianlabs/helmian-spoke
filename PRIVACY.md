# Helmian Spoke privacy policy

- The spoke connects only to the Helmian server it was paired with during
  setup (by default the Helmian Hands relay) and, during setup, to the
  Helmian Guard key endpoint to fetch a public key.
- It sends that server: a device id for this PC, the spoke's online status,
  and the results of work requested through the user's own Helmian account
  (for example command output or build results from the folders the user
  allowed).
- It does not collect browsing history, keystrokes, files outside the allowed
  folders, or passwords for AI services.
- The pairing code is used once during setup and is not stored.
- To stop all transfer: uninstall the spoke, or delete the `HelmianSpoke`
  scheduled task. Unpairing from helmian.cloud also stops it.

Helmian's cloud service has its own privacy policy at https://helmian.cloud.
Contact: the repository owners via GitHub issues.
