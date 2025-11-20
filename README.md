# Huffman

Huffman coding. Lossless data compression.

![Review](https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/huffman/review.yaml)
![Version](https://pursuit.purescript.org/packages/purescript-huffman/badge)
![Quality](https://img.shields.io/codacy/grade/4934e15d76c04969af83eddea6ce5461)

## Installing

```bash
spago install huffman
```

## Documentation

Documentation and more detailed examples are hosted on [Pursuit](https://pursuit.purescript.org/packages/purescript-huffman).

## Usage

```purs
import Data.Huffman.Codewords (composeCodewords)
import Data.Huffman.Encode (decodeWith, encodeWith)

str = "A strongly-typed functional programming language that compiles to JavaScript"
```

```purs
codewords = composeCodewords str

>>> (
  " : 00110000 00110000 00110001"
  "-: 00110000 00110000 00110000 00110001 00110001 00110000"
  "A: 00110000 00110000 00110000 00110001 00110001 00110001"
  "J: 00110000 00110000 00110000 00110001 00110000 00110000"
  "S: 00110000 00110000 00110000 00110001 00110000 00110001"
  "a: 00110001 00110001 00110001 00110000"
  ...
)
```

```purs
encoded = encodeWith str codewords

>>> 000111001000001111100011001011101001001001000011011111001001011101001101000...
```

```purs
decoded = decodeWith encoded codewords

>>> "A strongly-typed functional programming language that compiles to JavaScript"
```

## Tooling

### Dependencies

To install dependencies:

```bash
yarn install
yarn spago install
```

### Tests

To run tests:

```bash
yarn spago test
```

### Documentation

To generate the documentation locally:

```bash
yarn spago docs
```

### Linters

To run linters:

```bash
yarn lint
```

### Formatters

To run formatters:

```bash
yarn format
```

## Contributing

Please read this repository's [Code of Conduct](CODE_OF_CONDUCT.md) which outlines our collaboration standards and the [Changelog](CHANGELOG.md) for details on breaking changes that have been made.

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [SemVer](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

### Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<div align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</div>
