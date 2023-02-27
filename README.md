# PureScript Huffman

Huffman coding. Lossless data compression.

# Env names

Resolve short environment aliases.

## Status

| Source     | Shields                                                       |
| ---------- | ------------------------------------------------------------- |
| Project    | ![latest_release] ![license] ![line_count] ![language_count]  |
| Health     | ![documentation] ![review_action] ![codacy_quality]           |
| Repository | ![open_issues] ![closed_issues] ![open_pulls] ![closed_pulls] |
| Activity   | ![contributors] ![monthly_commits] ![last_commit]             |

## Installation

```bash
bower install purescript-huffman
```

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

## Tests

To run tests:

```bash
pulp test
```

## Documentation

This repository's documentation is hosted on [Pursuit](https://pursuit.purescript.org/packages/purescript-huffman).

To generate the documentation locally:

```bash
pulp docs
```

## Linters

To run linters:

```bash
nps lint
```

## Formatters

To run formatters:

```bash
nps format
```

## Continuous integration

This repository uses GitHub Actions to lint and test each commit. Each commit should be formatted and its corresponding documentation should be updated.

## Versioning

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [semver](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

## Changelog

Please read this repository's [changelog](CHANGELOG.md) for details on changes that have been made.

## Contributing

Please read this repository's guidelines on [contributing](CONTRIBUTING.md) for details on the process for submitting pull requests. Moreover, our [code of conduct](CODE_OF_CONDUCT.md) declares our collaboration standards.

## Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<p align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</p>

[latest_release]: https://img.shields.io/github/v/tag/joellefkowitz/purescript-huffman "Latest release"
[license]: https://img.shields.io/github/license/joellefkowitz/purescript-huffman "License"
[line_count]: https://img.shields.io/tokei/lines/github/joellefkowitz/purescript-huffman "Line count"
[language_count]: https://img.shields.io/github/languages/count/joellefkowitz/purescript-huffman "Language count"
[documentation]: https://pursuit.purescript.org/packages/purescript-huffman/badge "Documentation"
[review_action]: https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/purescript-huffman/review.yml "Review action"
[codacy_quality]: https://img.shields.io/codacy/grade/4934e15d76c04969af83eddea6ce5461 "Codacy quality"
[open_issues]: https://img.shields.io/github/issues/joellefkowitz/purescript-huffman "Open issues"
[closed_issues]: https://img.shields.io/github/issues-closed/joellefkowitz/purescript-huffman "Closed issues"
[open_pulls]: https://img.shields.io/github/issues-pr/joellefkowitz/purescript-huffman "Open pull requests"
[closed_pulls]: https://img.shields.io/github/issues-pr-closed/joellefkowitz/purescript-huffman "Closed pull requests"
[contributors]: https://img.shields.io/github/contributors/joellefkowitz/purescript-huffman "Contributors"
[monthly_commits]: https://img.shields.io/github/commit-activity/m/joellefkowitz/purescript-huffman "Monthly commits"
[last_commit]: https://img.shields.io/github/last-commit/joellefkowitz/purescript-huffman "Last commit"
