# Privacy and Data Handling

Hermes Community Edition is a bootstrap project that connects Hermes to a hosted model provider.

## Key principle

Do not send anything to a hosted model that you would not be comfortable sending to that provider under its terms.

## Avoid using free hosted models for

- client confidential data
- production credentials
- private API keys
- private customer records
- regulated data
- sensitive personal data
- internal business documents you do not have permission to process

## Local files

The installer creates a local `.env` file containing your own OpenRouter settings. This file is ignored by Git and should remain on your device.

## Public repo safety

This repository should only contain templates, examples, and documentation. It must not contain real credentials.

## Safer production route

For client or production use, consider a paid provider account with appropriate terms, private deployment options, strict logging controls, and documented data processing arrangements.
