{ name = "purescript-huffman"
, dependencies =
  [ "assert"
  , "console"
  , "effect"
  , "ordered-collections"
  , "psci-support"
  , "strings"
  , "stringutils"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "tests/**/*.purs" ]
}
