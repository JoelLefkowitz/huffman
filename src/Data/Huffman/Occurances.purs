module Data.Huffman.Occurances where

import Prelude
import Data.Foldable (foldl)
import Data.Map (Map, empty, insert, lookup)
import Data.Maybe (fromMaybe)
import Data.String.Common (split)
import Data.String.Pattern (Pattern(..))
import Data.String.Unsafe (char)
import Data.Huffman.Symbol (Symbol(..))

newtype Occurances
  = Occurances (Map Symbol Int)

instance eqOccurances :: Eq Occurances where
  eq (Occurances x) (Occurances y) = eq x y

instance showOccurances :: Show Occurances where
  show (Occurances x) = show x

countOccurances :: String -> Occurances
countOccurances str = Occurances $ foldl increment empty symbols
  where
  symbols = Symbol <<< char <$> split (Pattern "") str

  increment acc x = insert x (lookupInt x acc + 1) acc

  lookupInt x acc = fromMaybe 0 $ lookup x acc
