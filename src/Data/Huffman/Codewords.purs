module Data.Huffman.Codewords where

import Prelude
import Data.Array (concat)
import Data.Foldable (foldl)
import Data.Huffman.Occurrences (countOccurrences)
import Data.Huffman.Symbol (toString)
import Data.Huffman.Symbol as Symbol
import Data.Huffman.Tree (HuffmanTree(..), fromWeights)
import Data.Huffman.Weights (fromOccurrences)
import Data.List (zip)
import Data.Map (Map, fromFoldable, singleton, values)
import Data.Map.Internal (keys)
import Data.Tuple (Tuple(..))

foreign import utf16ToBinary :: String -> String

newtype Codewords
  = Codewords (Map Symbol.Symbol String)

instance eqCodewords :: Eq Codewords where
  eq (Codewords x) (Codewords y) = eq x y

instance showCodewords :: Show Codewords where
  show (Codewords x) =
    utf16ToBinary
      $ foldl
          ( \acc (Tuple a b) ->
              acc
                <> toString a
                <> "="
                <> b
                <> " "
          )
          ""
      $ zip (keys x) (values x)

composeCodewords :: String -> Codewords
composeCodewords =
  fromHuffmanTree
    <<< fromWeights
    <<< fromOccurrences
    <<< countOccurrences

fromHuffmanTree :: HuffmanTree -> Codewords
fromHuffmanTree (Leaf s _) = Codewords $ singleton s "0"

fromHuffmanTree (Node [ (Leaf s _) ] _) = Codewords $ singleton s "0"

fromHuffmanTree (Node arr w) = Codewords <<< fromFoldable $ codewords
  where
  codewords = collapseTree (Node arr w) ""

collapseTree :: HuffmanTree -> String -> Array (Tuple Symbol.Symbol String)
collapseTree (Leaf s _) code = [ Tuple s code ]

collapseTree (Node [ x, y ] _) code = concat [ xx, yy ]
  where
  xx = collapseTree x (code <> "0")

  yy = collapseTree y (code <> "1")

collapseTree _ _ = []
