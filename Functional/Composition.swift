//
//  Composition.swift
//  Functional
//
//  Created by Son Nguyen on 11/4/19.
//  Copyright © 2019 Son Nguyen. All rights reserved.
//

import Foundation

precedencegroup ForwardApplication {
    associativity: left
}

infix operator |>: ForwardApplication

public func |><A, B>(a: A, f: @escaping (A) -> B) -> B {
    return f(a)
}
