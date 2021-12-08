//
//  DataModel.swift
//  caculator_demo
//
//  Created by kai wen chen on 2021/12/7.
//

import Foundation
import SwiftUI

enum MenuColor:String,Codable {
    case red = "紅色"
    case green = "青色"
}

struct Menu: Identifiable,Codable{
    var id = UUID()
    var ItemView:String
    var price:String
    var name:String
    var appleColor:MenuColor
}
/*
struct Quantity: Identifiable,Codable{
    var id = UUID()
    var number:Int
    var date:Date
}
*/
struct Oder:Identifiable,Codable{
    var id = UUID()
    var menu:Menu
    var quantity:Int
}


class ShoppingCar:ObservableObject {
    
    @Published var en_number = 0
    
    func shopping() {
        let shoppingMenu = [
            Oder(menu: Menu(ItemView: "Apple", price: "36", name: "蘋果", appleColor: .green), quantity: 99)
        ]
        
        print(shoppingMenu[0].menu.appleColor.rawValue)
    }
}

class Cacu:ObservableObject{
    
    func cacu_fat(height:Float,weight:Float) -> Float {
        let anser = height * weight / 2
        return anser
    }
    
    func cacu_health(height:Float) -> Float{
        let anser = height/2
        return anser
        
    }
    
}
