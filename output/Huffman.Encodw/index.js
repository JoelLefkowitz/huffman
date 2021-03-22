"use strict";
var Data_Foldable = require("../Data.Foldable/index.js");
var Data_Functor = require("../Data.Functor/index.js");
var Data_Map_Internal = require("../Data.Map.Internal/index.js");
var Data_Maybe = require("../Data.Maybe/index.js");
var Data_String_Common = require("../Data.String.Common/index.js");
var Data_String_Unsafe = require("../Data.String.Unsafe/index.js");
var Huffman_Codewords = require("../Huffman.Codewords/index.js");
var Huffman_Occurances = require("../Huffman.Occurances/index.js");
var Huffman_Symbol = require("../Huffman.Symbol/index.js");
var Huffman_Tree = require("../Huffman.Tree/index.js");
var Huffman_Weights = require("../Huffman.Weights/index.js");
var encodeWith = function (str) {
    return function (v) {
        var symbols = Data_Functor.map(Data_Functor.functorArray)(function ($6) {
            return Huffman_Symbol["Symbol"](Data_String_Unsafe["char"]($6));
        })(Data_String_Common.split("")(str));
        var foo = function (acc) {
            return function (x) {
                return acc + Data_Maybe.fromMaybe("")(Data_Map_Internal.lookup(Huffman_Symbol.ordSymbol)(x)(v));
            };
        };
        return Data_Foldable.foldl(Data_Foldable.foldableArray)(foo)("")(symbols);
    };
};
var decodeWith = function (str) {
    return function (v) {
        return "";
    };
};
var composeCodewords = function ($7) {
    return Huffman_Codewords.fromHuffmanTree(Huffman_Tree.fromWeights(Huffman_Weights.fromOccurances(Huffman_Occurances.countOccurances($7))));
};
var encode = function (str) {
    return encodeWith(str)(composeCodewords(str));
};
module.exports = {
    encode: encode,
    composeCodewords: composeCodewords,
    encodeWith: encodeWith,
    decodeWith: decodeWith
};
