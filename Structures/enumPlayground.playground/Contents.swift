//: Playground - noun: a place where people can play

import UIKit

enum WeekDay: String {
    case Friday = "hi bro how are you"
    case Monday = "Oh its time to work"
    case Wednesday = "Its mid day"
    
}

WeekDay.Friday.rawValue
WeekDay.Monday.rawValue

enum TicketSale {
    case child
    case adult
    case senior
}

switch TicketSale.adult {
    case TicketSale.child:
        print("pay rs 5")
    case TicketSale.adult:
        print("pay rs 10")
default:
    break
}



