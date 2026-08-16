# SeedForge

A lightweight command-line tool written in [Odin](https://odin-lang.org/) for generating random 12-word [BIP-39](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki) mnemonic phrases.

## Features

- Generates 12-word BIP-39 mnemonic phrases
- Uses 128 bits of entropy
- SHA-256 checksum generation
- BIP-39 English wordlist
- Lightweight standalone executable
- No external runtime dependencies

## Usage

Download the latest executable from the [Releases](https://github.com/enzoblain/SeedForge/releases) page and run it from your terminal:

```bash
./seedforge
```

A new 12-word mnemonic phrase will be generated each time the program is executed.

## Security

SeedForge is intended to generate sensitive cryptographic material.

**Never share or publish a generated mnemonic phrase.**

Anyone who has access to a mnemonic phrase may be able to access funds associated with it.

For maximum security, generate and use seed phrases on a trusted, offline environment.

## Development

SeedForge is written entirely in Odin.

To build the project from source:

```bash
odin build . -out:seedforge
```

To run it during development:

```bash
odin run .
```

## License

MIT
