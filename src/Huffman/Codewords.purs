module Huffman.Codewords where

import Prelude

import Data.Map (Map)
import Huffman.Symbol (Symbol)
import Huffman.Weights (Weights(..))

newtype Codewords = 
  Codewords (Map Symbol String)

instance eqCodewords :: Eq Codewords where
  eq (Codewords x) (Codewords y) = eq x y

instance showCodewords :: Show Codewords where
  show (Codewords x) = show x

fromWeights :: Weights -> Codewords
fromWeights (Weights weights) = Codewords $ show <$> weights

