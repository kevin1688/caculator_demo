//
//  ContentView.swift
//  caculator_demo
//
//  Created by kai wen chen on 2021/12/3.
//

import SwiftUI

struct ContentView: View {
    
    @State var anser:Double = 0.0  //呈現答案
    @State var keyNumber:Double = 0.0 // 輸入的數字
    @State var pointNumber:Double = 0.0// 目標數字
    
    @State var keyNumberString = "0"
    @State var keyNumberString_temp = "0"
    
    var body: some View {
        VStack {
            
            Text("\(anser)")
                .font(.system(size: 24, weight: .black, design: .rounded))
                .frame(width: 200, height: 50, alignment: .center)
                .background(Color.green)
                .foregroundColor(.white)
            TextField("KeyNumber", text: $keyNumberString)
                .font(.system(size: 24, weight: .heavy, design: .rounded))
                .frame(width: 200, height: 50, alignment: .center)
                .keyboardType(.numberPad)
            
            HStack {
                KeyNumber(setNumber: 1, keyNumber: $keyNumber, keyNumberSting: $keyNumberString,color: .blue)
                    
                
                KeyNumber(setNumber: 2, keyNumber: $keyNumber, keyNumberSting: $keyNumberString,color: .blue)
                
                KeyNumber(setNumber: 3, keyNumber: $keyNumber, keyNumberSting: $keyNumberString,color: .blue)
            }
            HStack{
                    KeyNumber(setNumber: 5, keyNumber: $pointNumber, keyNumberSting: $keyNumberString_temp,color: .green)
                KeyNumber(setNumber: 10, keyNumber: $pointNumber, keyNumberSting: $keyNumberString_temp,color: .green)
                KeyNumber(setNumber: 20, keyNumber: $pointNumber, keyNumberSting: $keyNumberString_temp,color: .green)
            }
            Text("X")
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .frame(width: 200, height: 50, alignment: .center)
                .background(Color.red)
                .foregroundColor(.white)
                .onTapGesture {
                    anser = Double(keyNumberString)! * pointNumber
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct KeyNumber: View {
    @State var setNumber = 0.0
    @Binding var keyNumber:Double
    @Binding var keyNumberSting:String
    @State var color:Color = .red
    
    var body: some View {
        Text("\(Int(setNumber))")
            .fontWeight(.bold)
            .frame(width: 50, height: 50, alignment: .center)
            .background(color)
            .foregroundColor(.white)
            .onTapGesture {
                keyNumber = setNumber
                keyNumberSting = String(keyNumber)
            }
    }
}
