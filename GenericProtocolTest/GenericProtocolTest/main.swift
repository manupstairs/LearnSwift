//
//  main.swift
//  GenericProtocolTest
//
//  Created by zhexing on 30/09/2016.
//  Copyright © 2016 cisco.com. All rights reserved.
//

import Foundation

let print0 = TypePrinter0()
print0.PrintType(output: "String Type")

let print2 = TypePrinter2()
print2.PrintType(output: SomeType())

let print3 = TypePrinter3()
print3.PrintType(output: "String Type")

let print4 = TypePrinter4<SomeType>()
print4.PrintType(output: SomeType())

let print6 = TypePrinter4<String>()
print6.PrintType(output: "I am a String")


let print5 = TypePrinter5();
print(type(of: print5))
print(type(of: print2))
//
//var printArray = Array<TypePrinter2<SomeType>>()
//printArray.append(print2,print5)


var car = Car<UnleadedGasoline<CleanExhaust>, CleanExhaust>()
car.drive(fuel: UnleadedGasoline<CleanExhaust>()).emit()

var fusion = Car1<UnleadedGasoline<CleanExhaust>>()
fusion.drive(fuel: UnleadedGasoline<CleanExhaust>()).emit()
