//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sum (x:Int,y:Int) -> Int{
    return x + y
}

let total = sum(x: 5, y: 6)
print(total)

let sumClosure:(Int,Int) -> Int = { (x, y) in
    return x + y
}
sumClosure(7, 6)

let sumwClosure:(Int,Int) -> Int = {
    return $0 + $1
}
sumwClosure(9, 9)



