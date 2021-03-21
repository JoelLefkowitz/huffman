module Huffman.Codewords where

import Prelude

import Data.Map (Map, fromFoldable, singleton)
import Data.Tuple (Tuple(..))
import Huffman.Symbol (Symbol)
import Huffman.Tree (HuffmanTree(..))

newtype Codewords
  = Codewords (Map Symbol String)

instance eqCodewords :: Eq Codewords where
  eq (Codewords x) (Codewords y) = eq x y

instance showCodewords :: Show Codewords where
  show (Codewords x) = show x

fromHuffmanTree :: HuffmanTree -> Codewords
fromHuffmanTree (Leaf s w) = Codewords $ singleton s "0"
fromHuffmanTree (Node arr w) = Codewords <<< fromFoldable $ codewords
  where 
    codewords = collapseTree (Node arr w) ""

collapseTree :: HuffmanTree -> String -> Array (Tuple Symbol String)
collapseTree (Leaf s w) code = [Tuple s code]
collapseTree (Node arr w) code = []
