# Huffman

Huffman coding. Lossless data compression.

![Review](https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/huffman/review.yml)
![Version](https://pursuit.purescript.org/packages/purescript-huffman/badge)
![Quality](https://img.shields.io/codacy/grade/4934e15d76c04969af83eddea6ce5461)

## Installation

```bash
spago install huffman
```

## Documentation

Documentation and more detailed examples are hosted on [Github Pages](https://joellefkowitz.github.io/huffman).

## Usage

```purs
import Huffman (composeCodewords, encodeWith, decodeWith)

str = "A strongly-typed functional programming language that compiles to JavaScript"
```

```purs
codewords = composeCodewords str
show codewords

>>> fromFoldable [
        (Tuple   "001")
        (Tuple - "000110")
        (Tuple A "000111")
        (Tuple J "000100")
        (Tuple S "000101")
        (Tuple a "1110")
        (Tuple c "10011")
        (Tuple d "011010")
        (Tuple e "11010")
        (Tuple f "011011")
        (Tuple g "1010")
        (Tuple h "011000")
        (Tuple i "0111")
        (Tuple l "0100")
        (Tuple m "11011")
        (Tuple n "1011")
        (Tuple o "1100")
        (Tuple p "0101")
        (Tuple r "1000")
        (Tuple s "00000")
        (Tuple t "1111")
        (Tuple u "00001")
        (Tuple v "011001")
        (Tuple y "10010")
    ]
```

```purs
encoded = encodeWith str codewords
show encoded

>>> 000111001000001111100011001011101001001001000011011111001001011101001101000...
```

```purs
decoded = decodeWith encoded codewords
show decoded

>>> "A strongly-typed functional programming language that compiles to JavaScript"
```

## Tooling

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
npm run lint
```

### Formatters

To run formatters:

```bash
npm run format
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

<p align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</p>
