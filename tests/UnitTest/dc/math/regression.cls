Class UnitTest.dc.math.regression Extends %UnitTest.TestCase
{

Method "Test Evklid Distance"()
{
  set pt1(1)=3,pt1(2)=0
  set pt2(1)=3,pt2(2)=1
  set tResults=##class(dc.math.regression).EvklidDistance()
  set tExpected=2
  do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
