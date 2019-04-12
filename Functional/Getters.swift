//
//  Getters.swift
//  Functional
//
//  Created by Son Nguyen on 12/4/19.
//  Copyright © 2019 Son Nguyen. All rights reserved.
//

import Foundation

public func get<Root, Value>(_ kp: KeyPath<Root, Value>) -> (Root) -> Value {
    return { a in a[keyPath: kp] }
}

prefix operator ^
public prefix func ^<Root, Value>(_ kp: KeyPath<Root, Value>) -> (Root) -> Value {
    return get(kp)
}
