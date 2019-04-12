//
//  SideEffects.swift
//  Functional
//
//  Created by Son Nguyen on 11/4/19.
//  Copyright © 2019 Son Nguyen. All rights reserved.
//

import Foundation

precedencegroup EffectfulComposition {
    associativity: left
    higherThan: ForwardApplication
}

infix operator >=>: EffectfulComposition

