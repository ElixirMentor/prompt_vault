# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- TiktokenTokenizer for accurate OpenAI token counting using the tiktoken library
- Support for precise token counting with GPT-4, GPT-3.5-turbo, and other OpenAI models
- Comprehensive test suite for TiktokenTokenizer with 16 test cases
- Usage example demonstrating TiktokenTokenizer integration
- Documentation updates in README.md covering token counting options
- Implemented `Enumerable` protocol for `PromptVault.Context`, enabling direct usage with LangChain functions
- `PromptVault.Context` can now be passed directly to `LangChain.Chains.LLMChain.add_messages/2` and other LangChain functions expecting enumerables
- Automatic conversion of PromptVault messages to LangChain message format during enumeration
- Support for all message types: PromptMessage, MediaMessage, and ToolCallMessage
- Graceful error handling and filtering of unsupported message types
- Helper function `PromptVault.LangChain.from_langchain_messages/2` for reverse conversion
- Comprehensive documentation and examples in `docs/langchain_integration.md`

### Changed
- Updated mix.exs to include tiktoken dependency (~> 0.4.1)
- Enhanced README.md with token counting section and installation instructions
- Refactored `PromptVault.LangChain` module to focus on helper functions rather than wrapper API
- Updated documentation to reflect direct integration approach

### Improved
- Test coverage increased from 80.3% to 90.1%
- Added comprehensive tests for all message types and edge cases
- Enhanced error handling throughout the codebase

## [0.1.0] - Initial Release

### Added
- Initial PromptVault implementation with context management
- PretendTokenizer for token estimation using fnord library
- Support for text, tool call, and media messages
- EEx and Liquid template engines
- Context compaction with SummarizeHistory strategy
- Comprehensive test coverage
- Full documentation and examples
