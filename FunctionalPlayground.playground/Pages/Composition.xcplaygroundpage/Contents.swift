//: [Previous](@previous)

import Foundation
import Functional

/*:
 
 # Composition
 
 */

/*:
 
 ## Forward Application
 
 */

func double(_ x: Int) -> Int {
    return x * 2
}

2 |> double
3 |> double

//: [Next](@next)
