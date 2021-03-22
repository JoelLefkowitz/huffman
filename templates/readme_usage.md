## Usage

```purscript
import Huffman (composeCodewords, encodeWith, decodeWith)

str = "A strongly-typed functional programming language that compiles to JavaScript"
```

```purs
codewords = composeCodewords str
show codewords

>>> fromFoldable [
        (Tuple   "001")
        (Tuple - "000110")
        (Tuple A "000111")
        (Tuple J "000100")
        (Tuple S "000101")
        (Tuple a "1110")
        (Tuple c "10011")
        (Tuple d "011010")
        (Tuple e "11010")
        (Tuple f "011011")
        (Tuple g "1010")
        (Tuple h "011000")
        (Tuple i "0111")
        (Tuple l "0100")
        (Tuple m "11011")
        (Tuple n "1011")
        (Tuple o "1100")
        (Tuple p "0101")
        (Tuple r "1000")
        (Tuple s "00000")
        (Tuple t "1111")
        (Tuple u "00001")
        (Tuple v "011001")
        (Tuple y "10010")
    ]
```

```purs
encoded = encodeWith str codewords
show encoded

>>> 000111001000001111100011001011101001001001000011011111001001011101001101000...
```

```purs
decoded = decodeWith encoded codewords
show decoded

>>> "A strongly-typed functional programming language that compiles to JavaScript"
```
