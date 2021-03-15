{ name = "purescript-huffman"
, dependencies = [ "console", "effect", "psci-support", "assert", "strings", "ordered-collections" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "tests/**/*.purs" ]
}
