Class dc.math.regression
{

/// calculates Evklid distance between 2 points. points could be n-number of dimensions in format:
/// pt1(1)=v1
/// pt1(2)=v2
/// ...
/// where 1-2...n are dimensions, v1,v2 ..vn values for the particular dimension.
/// e.g. point with x=2, y=4 could be set as pt(1)=2 and pt(2)=4
ClassMethod EvklidDistance(pt1, pt2) As %Double
{
    //b "L"
    set evdist=0
    set i=$Order(@pt1@(""))
    while i {
        set evdist=evdist+((@pt1@(i)-@pt2@(i))**2)
        set i=$Order(@pt1@(i))
    }
    return evdist ** 0.5
}

ClassMethod TestEvklidDistance() As %Boolean
{
    set ^||pt1(1)=3,^||pt1(2)=0,^||pt1(3)=0
    set ^||pt2(1)=3,^||pt2(2)=2,^||pt2(3)=0
    set tResult=..EvklidDistance($na(^||pt1),$na(^||pt2))
    set tExpected=2
    zw
    if tResult'=tExpected return $$$NO
    return $$$YES
}

}
