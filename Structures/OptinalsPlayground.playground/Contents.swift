//: Playground - noun: a place where people can play

import UIKit

var no = 54465

// normal string
var name:String = "abc"
// optinal string
var optname:String? = "xyz"

print(name)
print(optname ?? "dd")


// convert ? to normal type
// implicit, force unwraping
var sentence = name + optname!

var neww:String? = "hi hello"



//var newwww:String = nil

// unimplicit unwrapping
if let somevl = neww {
    
    print(somevl)
    
}









