module Huffman.Symbol where

import Prelude

import Data.String.CodeUnits (singleton)

newtype Symbol
  = Symbol Char

instance eqSymbol :: Eq Symbol where
  eq (Symbol x) (Symbol y) = eq x y

instance ordSymbol :: Ord Symbol where
  compare (Symbol x) (Symbol y) = compare x y

instance showSymbol :: Show Symbol where
  show (Symbol x) = "Symbol: " <> singleton x
