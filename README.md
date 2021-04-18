# Purescript Huffman

Huffman coding. Lossless data compression.

## Status

| Source     | Shields                                                                                                                         |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------- |
| Project    | ![release][release_shield] ![license][license_shield]  ![lines][lines_shield] ![languages][languages_shield]                    |
| Health     | ![codacy][codacy_shield] ![readthedocs][readthedocs_shield] ![travis][travis_shield] ![codacy_coverage][codacy_coverage_shield] |
| Repository | ![issues][issues_shield] ![issues_closed][issues_closed_shield] ![pulls][pulls_shield] ![pulls_closed][pulls_closed_shield]     |
| Activity   | ![contributors][contributors_shield] ![monthly_commits][monthly_commits_shield] ![last_commit][last_commit_shield]              |

## Installing

```bash
spago install purescript-huffman
```

## Usage

```purscript
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

## Tests

To run unit tests and generate a coverage report:

```bash
grunt tests:unit
```

## Documentation

This repository's documentation is hosted on [readthedocs][readthedocs].

To generate the sphinx configuration:

```bash
grunt docs:generate
```

Then build the documentation:

```bash
grunt docs:build
```

## Tooling

To run linters:

```bash
grunt lint
```

To run formatters:

```bash
grunt format
```

Before committing new code:

```bash
grunt precommit
```

This will run linters, formatters, tests, generate a test coverage report and the sphinx configuration.

## Continuous integration

This repository uses Travis CI to build and test each commit. Formatting tasks and writing/generating documentation must be done before committing new code.

## Versioning

This repository adheres to semantic versioning standards.
For more information on semantic versioning visit [SemVer][semver].

Bump2version is used to version and tag changes.
For example:

```bash
bump2version patch
```

## Changelog

Please read this repository's [CHANGELOG](CHANGELOG.md) for details on changes that have been made.

## Contributing

Please read this repository's guidelines on [CONTRIBUTING](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## Contributors

- **Joel Lefkowitz** - _Initial work_ - [Joel Lefkowitz][author]

[![Buy Me A Coffee][coffee_button]][coffee]

## Remarks

Lots of love to the open source community!

![Be kind][be_kind]

<!-- Public links -->
[semver]: http://semver.org/

<!-- External links -->
[readthedocs]: https://purescript-huffman.readthedocs.io/en/latest/
[coffee]: https://www.buymeacoffee.com/joellefkowitz
[coffee_button]: https://cdn.buymeacoffee.com/buttons/default-blue.png
[be_kind]: https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif

<!-- Acknowledgments -->
[author]: https://github.com/joellefkowitz

<!-- Project shields -->
[release_shield]: https://img.shields.io/github/v/tag/joellefkowitz/purescript-huffman
[license_shield]: https://img.shields.io/github/license/joellefkowitz/purescript-huffman
[lines_shield]: https://img.shields.io/tokei/lines/github/joellefkowitz/purescript-huffman
[languages_shield]: https://img.shields.io/github/languages/count/joellefkowitz/purescript-huffman

<!-- Health shields -->
[codacy_shield]: https://img.shields.io/codacy/grade/4934e15d76c04969af83eddea6ce5461
[readthedocs_shield]: https://img.shields.io/readthedocs/purescript-huffman
[travis_shield]: https://img.shields.io/travis/com/joellefkowitz/purescript-huffman
[codacy_coverage_shield]: https://img.shields.io/codacy/coverage/4934e15d76c04969af83eddea6ce5461

<!-- Repository shields -->
[issues_shield]: https://img.shields.io/github/issues/joellefkowitz/purescript-huffman
[issues_closed_shield]: https://img.shields.io/github/issues-closed/joellefkowitz/purescript-huffman
[pulls_shield]: https://img.shields.io/github/issues-pr/joellefkowitz/purescript-huffman
[pulls_closed_shield]: https://img.shields.io/github/issues-pr-closed/joellefkowitz/purescript-huffman

<!-- Activity shields -->
[contributors_shield]: https://img.shields.io/github/contributors/joellefkowitz/purescript-huffman
[monthly_commits_shield]: https://img.shields.io/github/commit-activity/m/joellefkowitz/purescript-huffman
[last_commit_shield]: https://img.shields.io/github/last-commit/joellefkowitz/purescript-huffman
