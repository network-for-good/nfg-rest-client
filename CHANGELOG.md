# Changelog

All notable changes to this project will be documented in this file.

## [1.0.12] - 2026-09-03

### Added

- CircleCI build config (`.circleci/config.yml`, `cimg/ruby:3.4.2`), superseding the legacy `.travis.yml` setup (Travis config left in place for now; removal tracked as a follow-up).
- `.ruby-version` pinning Ruby `3.4.2`.

### Changed

- Pinned transitive `activesupport` to `= 7.2.3.2` to resolve 16 CVEs.
- Committed `Gemfile.lock` (previously gitignored) for CI reproducibility.
- Relaxed the `bundler` development dependency (was pinned to `~> 2.2.33`, incompatible with Ruby 3.4.2).
- Added `rspec_junit_formatter` development dependency for CircleCI test reporting.
- Converted `spec/remote/card_on_file_spec.rb`, `spec/remote/credit_card_donation_spec.rb`, and `spec/remote/access_token_spec.rb` from live-sandbox integration tests (hardcoded, years-expired credentials/token) to deterministic WebMock-stubbed tests using the existing `NfgRestClientStubs` helpers. `access_token_spec.rb` is no longer permanently `pending`.
