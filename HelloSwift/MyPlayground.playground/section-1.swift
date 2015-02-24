// Playground - noun: a place where people can play

import UIKit


var friends = ["john":35, "ann":29, "steve":42]

var age = friends["steve"]

friends["hugo"] = 30

friends["john"] = 30

age = friends["john"]

age = friends["John"]

age = friends["kamaal"]



let iOSVersion = NSProcessInfo().operatingSystemVersionString // iOS 8 API to find Operating System Version
println("Hello Swift with iOS:\(iOSVersion)")

var arrNumbers = [2, 20, 41, 4]
arrNumbers += [3, 56]


