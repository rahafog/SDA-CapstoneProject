#!/bin/sh

code=0
testfile=$1
files=$testfile

if [ -z $testfile ]
then
  files=$(ls /e2e-js-test/*_test.js)
fi

for test in $files
do
<<<<<<< HEAD
  #node test/e2e-js-test/test_helper.js
=======
  #node test/e2e-test/test_helper.js
>>>>>>> de7a4960954536d4ed8fdee00e053adf3b83928c
  casperjs test $test
  ret=$?
  if [ ! $ret == "0" ]; then code=1; fi
done

exit $code
