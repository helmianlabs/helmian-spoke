# Code signing policy

Free code signing provided by [SignPath.io](https://about.signpath.io/), certificate by [SignPath Foundation](https://signpath.org/).

Only Windows release artifacts built by this repository's GitHub Actions
workflow from the source code in this repository are signed. Every signing
request is approved manually by an Approver.

## Team roles

- Committers and reviewers: [helmianlabs members](https://github.com/orgs/helmianlabs/people)
- Approvers: [helmianlabs owners](https://github.com/orgs/helmianlabs/people?query=role%3Aowner)

All team members use multi-factor authentication for GitHub and SignPath.
Changes from people who are not committers are reviewed before merge.

## Privacy policy

See [PRIVACY.md](PRIVACY.md). In short: the spoke only connects to the Helmian
server that the person installing it pairs it with, to receive and report work
that person (or their Helmian agents, under their approvals) asked for.
