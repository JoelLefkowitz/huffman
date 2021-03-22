"use strict";
var Data_Eq = require("../Data.Eq/index.js");
var Data_Show = require("../Data.Show/index.js");
var Huffman_Codewords = require("../Huffman.Codewords/index.js");
var Huffman_Encode = require("../Huffman.Encode/index.js");
var Test_Assert = require("../Test.Assert/index.js");
var testEncode = (function () {
    var codewords = Huffman_Codewords.composeCodewords("A strongly-typed functional programming language that compiles to JavaScript");
    var encoded = Huffman_Encode.encodeWith("A strongly-typed functional programming language that compiles to JavaScript")(codewords);
    var decoded = Huffman_Encode.decodeWith(encoded)(codewords);
    return Test_Assert.assertEqual(Data_Eq.eqString)(Data_Show.showString)({
        actual: encoded,
        expected: ""
    });
})();
module.exports = {
    testEncode: testEncode
};
