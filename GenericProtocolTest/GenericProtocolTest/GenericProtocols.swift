//
//  GenericProtocols.swift
//  GenericProtocolTest
//
//  Created by zhexing on 17/10/2016.
//  Copyright © 2016 cisco.com. All rights reserved.
//

import Foundation

public protocol Automobile {
    associatedtype FuelType
    associatedtype ExhaustType
    func drive(fuel: FuelType) -> ExhaustType
}
public protocol Fuel {
    associatedtype ExhaustType
    func consume() -> ExhaustType
}
public protocol Exhaust {
    init()
    func emit()
}

public struct UnleadedGasoline<E: Exhaust>: Fuel {
    public func consume() -> E {
        print("...consuming unleaded gas...")
        return E()
    }
}
public struct CleanExhaust: Exhaust {
    public init() {}
    public func emit() {
        print("...this is some clean exhaust...")
    }
}
public class Car<F: Fuel,E: Exhaust>: Automobile where F.ExhaustType == E {
    public func drive(fuel: F) -> E {
        return fuel.consume()
    }
}

public class Car1<F: Fuel>: Automobile {
    public func drive(fuel: F) -> F.ExhaustType {
        return fuel.consume()
    }
}
