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

func sqr(_ x: Int) -> Int {
    return x * x
}

2 |> double
3 |> double

2 |> sqr
3 |> sqr

/*:
 
 ## Foward Composition
 
 */

2 |> double >>> sqr
3 |> double >>> String.init
//: [Next](@next)
