module Huffman.Tree where

import Prelude

import Huffman.Symbol (Symbol)
import Huffman.Weights (Weights(..))
import Utilities.Strings (joinWith)

data HuffmanTree
  = Node (Array (HuffmanTree)) Number
  | Leaf Symbol Number

instance eqHuffmanTree :: Eq HuffmanTree where
  eq (Node arr1 w1) (Node arr2 w2) = eq arr1 arr2 && eq w1 w2
  eq (Leaf s1 w1) (Leaf s2 w2) = eq s1 s2 && eq w1 w2
  eq (Node _ _) (Leaf _ _) = false
  eq (Leaf _ _) (Node _ _) = false

instance showHuffmanTree :: Show HuffmanTree where
  show (Node arr w) = "[" <> (joinWith ", " arr) <> "]: " <> show w
  show (Leaf s w) = show s <> ": " <> show w

fromWeights :: Weights -> HuffmanTree
fromWeights (Weights weights) = Node [] 1.0
