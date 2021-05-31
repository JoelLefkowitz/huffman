module Test.Huffman.Codewords where

import Prelude
import Data.Map (empty, fromFoldable, singleton)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Huffman.Codewords (Codewords(..), composeCodewords)
import Huffman.Symbol (Symbol(..))
import Test.Assert (assertEqual)

testCodewords :: Effect Unit
testCodewords = do
  assertEqual
    { actual: composeCodewords ""
    , expected: Codewords empty
    }
  assertEqual
    { actual: composeCodewords "a"
    , expected: Codewords $ singleton (Symbol 'a') "0"
    }
  assertEqual
    { actual: composeCodewords "ab"
    , expected:
        Codewords <<< fromFoldable
          $ [ Tuple (Symbol 'a') "0"
            , Tuple (Symbol 'b') "1"
            ]
    }
  assertEqual
    { actual: composeCodewords "abcd"
    , expected:
        Codewords <<< fromFoldable
          $ [ Tuple (Symbol 'a') "10"
            , Tuple (Symbol 'b') "11"
            , Tuple (Symbol 'c') "00"
            , Tuple (Symbol 'd') "01"
            ]
    }
  assertEqual
    { actual: composeCodewords "abcc"
    , expected:
        Codewords <<< fromFoldable
          $ [ Tuple (Symbol 'a') "00"
            , Tuple (Symbol 'b') "01"
            , Tuple (Symbol 'c') "1"
            ]
    }
