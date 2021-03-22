"use strict";
var Data_Eq = require("../Data.Eq/index.js");
var Data_Map_Internal = require("../Data.Map.Internal/index.js");
var Huffman_Symbol = require("../Huffman.Symbol/index.js");
var Codewords = function (x) {
    return x;
};
var eqCodewords = new Data_Eq.Eq(function (v) {
    return function (v1) {
        return Data_Eq.eq(Data_Map_Internal.eqMap(Huffman_Symbol.eqSymbol)(Data_Eq.eqString))(v)(v1);
    };
});
module.exports = {
    Codewords: Codewords,
    eqCodewords: eqCodewords
};
