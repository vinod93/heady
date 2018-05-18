//: Playground - noun: a place where people can play

import UIKit

let array   =   [1,2,3,4,5,6,7,8,9]
let even    =   array.filter { $0 % 2 == 0 }
let odd     =   array.reduce(0) { $0 + $1 }

var set     =   Set(array)
let evenSet =   Set(even)
