# Tink FPE

Format-Preserving Encryption support for Google Tink.

Format-Preserving Encryption (FPE) is a type of encryption that encrypts data in a way that preserves the format of the original plaintext. This means that after encryption, the encrypted data retains the same format as the original plaintext, such as a specific length or character set.

## Features

- _Tink FPE_ implements a [Primitive](https://developers.google.com/tink/glossary) that extends the Google Tink framework with support for Format-Preserving Encryption (FPE).
- The following [NIST compliant](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-38Gr1-draft.pdf) algorithms are currently supported: `FF3-1`.
- The implementation of the underlying algorithm is built on top of the excellent [Mysto FPE](https://github.com/mysto/python-fpe) library.
- Tink FPE is currently available for Python and Java.
- Regarding sensitivity for alphabet, FPE is designed to work with a specific alphabet, which is typically defined in the encryption algorithm. If the plaintext data contains characters that are not part of the defined alphabet, Tink FPE supports different _strategies_ for dealing with the data or substitute the characters with ones that are part of the alphabet.

## Why Tink?

Google Tink is an open-source cryptographic library developed by Google. It provides a simple and secure way for developers to use cryptographic APIs for common cryptographic operations, such as encryption/decryption, signing/verifying signatures, and key management.

Tink aims to make it easier for developers to use cryptography correctly, by providing a safe and efficient implementation of cryptographic primitives. Tink also provides a secure way to handle cryptographic keys, which is crucial for ensuring the security of encrypted data.

Google Tink provides support for many types of cryptographic operations. However, it does not support Format-Preserving Encryption.


## Getting started

This repository does not contain code itself. Instead, it provides scripts that pull together the repos that adds support for different languages. Currently, Java and Python is supported.

See and use `Make` to get started with common tasks:

```
$ make

doctor                         Sanity check of required tools and environment settings required for development
update-all                     Clone or pull all changes from associated repos
status-all                     Show a brief summary of changes to local repos
```

## Known issues

// TODO: Describe issue about chunking that results in up to last 3 characters not being encrypted.

## Contributing

Contributions are very welcome.
To learn more, see the [Contributor Guide].

## License

Distributed under the terms of the [MIT license][license],
_Tink FPE Python_ is free and open source software.

## Issues

If you encounter any problems,
please [file an issue] along with a detailed description.


<!-- github-only -->

[license]: https://github.com/statisticsnorway/tink-fpe/blob/main/LICENSE
[contributor guide]: https://github.com/statisticsnorway/tink-fpe/blob/main/CONTRIBUTING.md
