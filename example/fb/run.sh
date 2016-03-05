#!/bin/sh

MAJOR_HOME="../../"

echo
echo "- Running Major without mutation"
echo "  (javac FbClass/FbClass.java)"
$MAJOR_HOME/bin/javac FbClass/FbClass.java

echo
echo "- Compiling mml script to its binary representation"
echo "  (mmlc \$MAJOR_HOME/mml/fb.mml \$MAJOR_HOME/mml/fb.mml.bin)"
$MAJOR_HOME/bin/mmlc $MAJOR_HOME/mml/fb.mml $MAJOR_HOME/mml/fb.mml.bin

echo
echo "- Running Major with mutation"
echo "  (javac -XMutator=\"\$MAJOR_HOME/mml/tutorial.mml.bin\" FbClass/FbClass.java)"
$MAJOR_HOME/bin/javac -XMutator="$MAJOR_HOME/mml/fb.mml.bin" FbClass/FbClass.java

echo
echo "- Compiling test case (config.jar has to be on the classpath!)"
echo "  (javac -cp .:\$MAJOR_HOME/config/config.jar FbClassTest.java)"
$MAJOR_HOME/bin/javac -Xlint:unchecked -cp .:$MAJOR_HOME/config/config.jar FbClassTest.java

echo
echo "- Executing test case (config.jar has to be on the classpath!)"
echo "  (java -cp .:\$MAJOR_HOME/config/config.jar FbClassTest)"
java -cp .:$MAJOR_HOME/config/config.jar FbClassTest

echo
echo "- Compiling junit test case"
echo " (javac -cp .:\$MAJOR_HOME/config/config.jar: FbClassTestSuite.java)"
$MAJOR_HOME/bin/javac -Xlint:unchecked -cp .:$MAJOR_HOME/config/config.jar:$MAJOR_HOME/lib/junit-4.12.jar:$MAJOR_HOME/lib/hamcrest-core-1.3.jar FbClassTestSuite.java

echo
echo "- Running test cases with JUnit"
echo "  (java -cp .:\$MAJOR_HOME/config/config.jar: FbClassTest)"
java -cp .:$MAJOR_HOME/config/config.jar:$MAJOR_HOME/lib/junit-4.12.jar:$MAJOR_HOME/lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore FbClassTestSuite
