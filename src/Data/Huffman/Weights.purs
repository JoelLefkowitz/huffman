module Data.Huffman.Weights where

import Prelude
import Data.Foldable (sum)
import Data.Int (toNumber)
import Data.Map (Map, values)
import Data.Huffman.Occurances (Occurances(..))
import Data.Huffman.Symbol (Symbol)

newtype Weights
  = Weights (Map Symbol Number)

instance eqWeights :: Eq Weights where
  eq (Weights x) (Weights y) = eq x y

instance showWeights :: Show Weights where
  show (Weights x) = show x

fromOccurances :: Occurances -> Weights
fromOccurances (Occurances occ) = Weights $ normalize totalOccurances <$> toNumber <$> occ
  where
  totalOccurances = sum $ values occ

  normalize total x = (1.0 / toNumber total) * x
