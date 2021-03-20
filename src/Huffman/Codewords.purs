module Huffman.Codewords where

import Prelude
import Data.Map (Map, empty)
import Huffman.Symbol (Symbol(..))
import Huffman.Tree (HuffmanTree(..))

newtype Codewords
  = Codewords (Map Symbol String)

instance eqCodewords :: Eq Codewords where
  eq (Codewords x) (Codewords y) = eq x y

instance showCodewords :: Show Codewords where
  show (Codewords x) = show x

fromHuffmanTree :: HuffmanTree -> Codewords
fromHuffmanTree (Node _ _) = Codewords empty

fromHuffmanTree (Leaf (Symbol _) _) = Codewords empty
