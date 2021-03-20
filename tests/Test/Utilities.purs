module Test.Utilities where

import Prelude
import Effect (Effect)
import Test.Assert (assertEqual)
import Utilities.Strings (trimEnd, joinWith)

testUtilities :: Effect Unit
testUtilities = do
  assertEqual
    { actual: trimEnd "c" "abc"
    , expected: "ab"
    }
  assertEqual
    { actual: trimEnd "d" "abc"
    , expected: "abc"
    }
  assertEqual
    { actual: joinWith ", " [ 1, 2, 3 ]
    , expected: "1, 2, 3"
    }
