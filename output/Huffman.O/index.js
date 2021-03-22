"use strict";
var Data_Eq = require("../Data.Eq/index.js");
var Data_Foldable = require("../Data.Foldable/index.js");
var Data_Functor = require("../Data.Functor/index.js");
var Data_Map_Internal = require("../Data.Map.Internal/index.js");
var Data_Maybe = require("../Data.Maybe/index.js");
var Data_String_Common = require("../Data.String.Common/index.js");
var Data_String_Unsafe = require("../Data.String.Unsafe/index.js");
var Huffman_Symbol = require("../Huffman.Symbol/index.js");
var Occurances = function (x) {
    return x;
};
var eqOccurances = new Data_Eq.Eq(function (v) {
    return function (v1) {
        return Data_Eq.eq(Data_Map_Internal.eqMap(Huffman_Symbol.eqSymbol)(Data_Eq.eqInt))(v)(v1);
    };
});
var countOccurances = function (str) {
    var symbols = Data_Functor.map(Data_Functor.functorArray)(function ($4) {
        return Huffman_Symbol["Symbol"](Data_String_Unsafe["char"]($4));
    })(Data_String_Common.split("")(str));
    var increment = function (acc) {
        return function (x) {
            return Data_Map_Internal.insert(Huffman_Symbol.ordSymbol)(x)(Data_Maybe.fromMaybe(0)(Data_Map_Internal.lookup(Huffman_Symbol.ordSymbol)(x)(acc)) + 1 | 0)(acc);
        };
    };
    return Occurances(Data_Foldable.foldl(Data_Foldable.foldableArray)(increment)(Data_Map_Internal.empty)(symbols));
};
module.exports = {
    Occurances: Occurances,
    countOccurances: countOccurances,
    eqOccurances: eqOccurances
};
