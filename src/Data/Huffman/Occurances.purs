module Data.Huffman.Occurrences where

import Prelude
import Data.Foldable (foldl)
import Data.Map (Map, empty, insert, lookup)
import Data.Maybe (fromMaybe)
import Data.String.Common (split)
import Data.String.Pattern (Pattern(..))
import Data.String.Unsafe (char)
import Data.Huffman.Symbol (Symbol(..))

newtype Occurrences
  = Occurrences (Map Symbol Int)

instance eqOccurrences :: Eq Occurrences where
  eq (Occurrences x) (Occurrences y) = eq x y

instance showOccurrences :: Show Occurrences where
  show (Occurrences x) = show x

countOccurrences :: String -> Occurrences
countOccurrences str = Occurrences $ foldl increment empty symbols
  where
  symbols = Symbol <<< char <$> split (Pattern "") str

  increment acc x = insert x (lookupInt x acc + 1) acc

  lookupInt x acc = fromMaybe 0 $ lookup x acc
