{ name = "purescript-huffman"
, version = "0.2.0"
, repository = "https://github.com/JoelLefkowitz/purescript-huffman"
, license = "MIT"
, dependencies = 
    [ "foldable-traversable"
    , "ordered-collections"
    , "prelude"
    , "random"
    , "repr"
    , "strings"
    , "stringutils"
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
