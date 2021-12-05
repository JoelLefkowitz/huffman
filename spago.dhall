{ name = "purescript-huffman"
, version = "0.2.0"
, repository = "https://github.com/JoelLefkowitz/purescript-huffman"
, license = "MIT"
, dependencies = 
    [ "prelude"
    , "repr"
    , "foldable-traversable"
    , "strings"
    , "ordered-collections"
    , "stringutils"
    , "random"
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
