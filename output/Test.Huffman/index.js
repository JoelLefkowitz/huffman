"use strict";
var Test_Huffman_Alphabet = require("../Test.Huffman.Alphabet/index.js");
var Test_Huffman_Codewords = require("../Test.Huffman.Codewords/index.js");
var Test_Huffman_Encode = require("../Test.Huffman.Encode/index.js");
var Test_Huffman_Occurances = require("../Test.Huffman.Occurances/index.js");
var Test_Huffman_Symbol = require("../Test.Huffman.Symbol/index.js");
var Test_Huffman_Tree = require("../Test.Huffman.Tree/index.js");
var Test_Huffman_Weights = require("../Test.Huffman.Weights/index.js");
var Test_Utilities_Strings = require("../Test.Utilities.Strings/index.js");
var main = function __do() {
    Test_Utilities_Strings.testStrings();
    Test_Huffman_Symbol.testSymbol();
    Test_Huffman_Alphabet.testAlphabet();
    Test_Huffman_Occurances.testOccurances();
    Test_Huffman_Weights.testWeights();
    Test_Huffman_Tree.testTree();
    Test_Huffman_Codewords.testCodewords();
    return Test_Huffman_Encode.testEncode();
};
module.exports = {
    main: main
};
