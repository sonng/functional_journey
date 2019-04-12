//
//  Reduce.swift
//  Functional
//
//  Created by Son Nguyen on 12/4/19.
//  Copyright © 2019 Son Nguyen. All rights reserved.
//

import Foundation

public func combining<A, B>(_ f: @escaping (A) -> B, by g: @escaping (B, B) -> B) -> (B, A) -> B {
    return { b, a in g(b, f(a)) }
}
