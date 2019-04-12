//: [Previous](@previous)
import Foundation
import Functional

struct User {
    let name: String
    let age: Int
}

let lock = User(name: "Lockie", age: 5)
let nameGetter = get(\User.name)

nameGetter(lock)

let smith = User(name: "Smith", age: 8)
let ageGetter = ^\User.age

ageGetter(smith)

let people = [lock, smith]

people.map(nameGetter)
people.map(ageGetter)
people.map(^\.name)
people.map(^\.age)
//: [Next](@next)
