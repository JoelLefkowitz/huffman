module Test.Utilities.Strings where

import Prelude
import Effect (Effect)
import Test.Assert (assertEqual)
import Utilities.Strings (trimEnd, trimStart, joinWith)

testStrings :: Effect Unit
testStrings = do
  assertEqual
    { actual: trimEnd "a" "a"
    , expected: ""
    }
  assertEqual
    { actual: trimEnd "c" "abc"
    , expected: "ab"
    }
  assertEqual
    { actual: trimEnd "d" "abc"
    , expected: "abc"
    }
  assertEqual
    { actual: trimStart "a" "a"
    , expected: ""
    }
  assertEqual
    { actual: trimStart "a" "abc"
    , expected: "bc"
    }
  assertEqual
    { actual: trimStart "d" "abc"
    , expected: "abc"
    }
  assertEqual
    { actual: joinWith ", " [ 1, 2, 3 ]
    , expected: "1, 2, 3"
    }
