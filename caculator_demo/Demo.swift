//
//  Demo.swift
//  caculator_demo
//
//  Created by kai wen chen on 2021/12/7.
//

import SwiftUI

struct Demo: View {
    
    let shop = ShoppingCar()
    
    @State var selection: Int? = nil
    @StateObject var number = ShoppingCar()
    
    @StateObject var cacu = Cacu()
    
    @State var anser:Float = 0.0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("目前的值\(number.en_number)")
                
                Button {
                    shop.shopping()
                    number.en_number += 1
                    anser = cacu.cacu_health(height: 123)
                } label: {
                    Text("執行測試")
                }
                .padding()
                
                
                
                NavigationLink {
                    sendView().environmentObject(number)
                } label: {
                    Text("value")
                }
            }
            
        }
        
    }
    
    
}


struct sendView:View {
    @EnvironmentObject var number:ShoppingCar
    
    var body: some View {
        VStack {
            Text("變動\(number.en_number)")
            Button {
                number.en_number = 0
            } label: {
                Text("歸零")
            }

        }
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
