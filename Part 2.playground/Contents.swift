import UIKit

//  Some practice with tuple data type

var myFirstTuple = ("my", 1, "tuple")

var mySecondTuple: (String, Int, String)
mySecondTuple = ("my", 2, "tuple")

print("First tuple = \(myFirstTuple), second tuple = \(mySecondTuple)")

print("Second item in first tuple = \(myFirstTuple.1)")

let myThirdTuple: (whosThatTuple: String, numberOfTuple: Int, whatIsThis: String) = ("my", 3, "tuple")

let (ownerOfTuple,_,_) = myThirdTuple
print(ownerOfTuple)
