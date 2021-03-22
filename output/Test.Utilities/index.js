"use strict";
var Data_Eq = require("../Data.Eq/index.js");
var Data_Foldable = require("../Data.Foldable/index.js");
var Data_Show = require("../Data.Show/index.js");
var Test_Assert = require("../Test.Assert/index.js");
var Utilities_Strings = require("../Utilities.Strings/index.js");
var testUtilities = function __do() {
    Test_Assert.assertEqual(Data_Eq.eqString)(Data_Show.showString)({
        actual: Utilities_Strings.trimEnd("a")("a"),
        expected: ""
    })();
    Test_Assert.assertEqual(Data_Eq.eqString)(Data_Show.showString)({
        actual: Utilities_Strings.trimEnd("c")("abc"),
        expected: "ab"
    })();
    Test_Assert.assertEqual(Data_Eq.eqString)(Data_Show.showString)({
        actual: Utilities_Strings.trimEnd("d")("abc"),
        expected: "abc"
    })();
    Test_Assert.assertEqual(Data_Eq.eqString)(Data_Show.showString)({
        actual: Utilities_Strings.trimStart("a")("a"),
        expected: ""
    })();
    Test_Assert.assertEqual(Data_Eq.eqString)(Data_Show.showString)({
        actual: Utilities_Strings.trimStart("a")("abc"),
        expected: "bc"
    })();
    Test_Assert.assertEqual(Data_Eq.eqString)(Data_Show.showString)({
        actual: Utilities_Strings.trimStart("d")("abc"),
        expected: "abc"
    })();
    return Test_Assert.assertEqual(Data_Eq.eqString)(Data_Show.showString)({
        actual: Utilities_Strings.joinWith(Data_Show.showInt)(Data_Foldable.foldableArray)(", ")([ 1, 2, 3 ]),
        expected: "1, 2, 3"
    })();
};
module.exports = {
    testUtilities: testUtilities
};
