"use strict";
var Data_Foldable = require("../Data.Foldable/index.js");
var Data_Map_Internal = require("../Data.Map.Internal/index.js");
var Data_Tuple = require("../Data.Tuple/index.js");
var Huffman_Codewords = require("../Huffman.Codewords/index.js");
var Huffman_Symbol = require("../Huffman.Symbol/index.js");
var Test_Assert = require("../Test.Assert/index.js");
var testCodewords = function __do() {
    Test_Assert.assertEqual(Huffman_Codewords.eqCodewords)(Huffman_Codewords.showCodewords)({
        actual: Huffman_Codewords.composeCodewords(""),
        expected: Data_Map_Internal.empty
    })();
    Test_Assert.assertEqual(Huffman_Codewords.eqCodewords)(Huffman_Codewords.showCodewords)({
        actual: Huffman_Codewords.composeCodewords("a"),
        expected: Huffman_Codewords.Codewords(Data_Map_Internal.singleton("a")("0"))
    })();
    Test_Assert.assertEqual(Huffman_Codewords.eqCodewords)(Huffman_Codewords.showCodewords)({
        actual: Huffman_Codewords.composeCodewords("ab"),
        expected: Huffman_Codewords.Codewords(Data_Map_Internal.fromFoldable(Huffman_Symbol.ordSymbol)(Data_Foldable.foldableArray)([ new Data_Tuple.Tuple("a", "0"), new Data_Tuple.Tuple("b", "1") ]))
    })();
    Test_Assert.assertEqual(Huffman_Codewords.eqCodewords)(Huffman_Codewords.showCodewords)({
        actual: Huffman_Codewords.composeCodewords("abcd"),
        expected: Huffman_Codewords.Codewords(Data_Map_Internal.fromFoldable(Huffman_Symbol.ordSymbol)(Data_Foldable.foldableArray)([ new Data_Tuple.Tuple("a", "10"), new Data_Tuple.Tuple("b", "11"), new Data_Tuple.Tuple("c", "00"), new Data_Tuple.Tuple("d", "01") ]))
    })();
    return Test_Assert.assertEqual(Huffman_Codewords.eqCodewords)(Huffman_Codewords.showCodewords)({
        actual: Huffman_Codewords.composeCodewords("abcc"),
        expected: Huffman_Codewords.Codewords(Data_Map_Internal.fromFoldable(Huffman_Symbol.ordSymbol)(Data_Foldable.foldableArray)([ new Data_Tuple.Tuple("a", "00"), new Data_Tuple.Tuple("b", "01"), new Data_Tuple.Tuple("c", "1") ]))
    })();
};
module.exports = {
    testCodewords: testCodewords
};
