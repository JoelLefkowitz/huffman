"use strict";
var Data_Eq = require("../Data.Eq/index.js");
var Data_Foldable = require("../Data.Foldable/index.js");
var Data_Functor = require("../Data.Functor/index.js");
var Data_Set = require("../Data.Set/index.js");
var Data_Show = require("../Data.Show/index.js");
var Data_String_Common = require("../Data.String.Common/index.js");
var Data_String_Unsafe = require("../Data.String.Unsafe/index.js");
var Huffman_Symbol = require("../Huffman.Symbol/index.js");
var Utilities_Strings = require("../Utilities.Strings/index.js");
var Alphabet = function (x) {
    return x;
};
var showAlphabet = new Data_Show.Show(function (v) {
    return "[" + (Utilities_Strings.joinWith(Huffman_Symbol.showSymbol)(Data_Set.foldableSet)(", ")(v) + "]");
});
var fromString = function (str) {
    var symbols = Data_Functor.map(Data_Functor.functorArray)(function ($6) {
        return Huffman_Symbol["Symbol"](Data_String_Unsafe["char"]($6));
    })(Data_String_Common.split("")(str));
    return Data_Set.fromFoldable(Data_Foldable.foldableArray)(Huffman_Symbol.ordSymbol)(symbols);
};
var eqAlphabet = new Data_Eq.Eq(function (v) {
    return function (v1) {
        return Data_Eq.eq(Data_Set.eqSet(Huffman_Symbol.eqSymbol))(v)(v1);
    };
});
module.exports = {
    Alphabet: Alphabet,
    fromString: fromString,
    eqAlphabet: eqAlphabet,
    showAlphabet: showAlphabet
};
