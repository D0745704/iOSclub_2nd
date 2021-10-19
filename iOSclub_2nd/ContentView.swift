//
//  ContentView.swift
//  iOSclub_2nd
//
//  Created by 仲輝 on 2021/10/19.
//

import SwiftUI

struct ContentView: View {
    
    @State var red  : Double = 1.0
    @State var blue : Double = 1.0
    @State var green: Double = 1.0
    @State private var bot = false
    var min = 0.0
    var max = 1.0
    var body: some View{
        ZStack{
            Color(red: red, green: green, blue:blue)
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("R: \(Int(red * 255))")
                        .font(.title)
                    Text("G: \(Int(green * 255))")
                        .font(.title)
                    Text("B: \(Int(blue * 255))")
                        .font(.title)
                }.padding()//word RGB
                Spacer()
                Toggle(isOn: $bot.animation(.spring())){
                    Text("\(bot ? "On" : "Off")")
                }.padding()
                if(bot){
                    Stepper(value: $red, step: 0.01){
                        Text("modify red value")
                    }.padding()
                    Stepper(value: $green, step: 0.01){
                        Text("modify green value")
                    }.padding()
                    Stepper(value: $blue, step: 0.01){
                        Text("modify blue value")
                    }.padding()
                }
                Spacer()
                Group{
                    if(!bot){
                        Slider(value: $red, in: min...max)
                            .padding()
                        Slider(value: $green, in: min...max)
                            .padding()
                        Slider(value: $blue, in: min...max)
                            .padding()
                    }
                }
                
            }
        }
    }
    
    
    
    
    /*
    @State var val: Double = 0.0
    @State var dot: Double = 0.0
    @State private var botan = false
    
    var body: some View {
        ZStack{
            Color.yellow
                .opacity(0.4)
                .ignoresSafeArea()
            VStack{
                Group{
                    Stepper(value: $val, step: 10){
                        Text("Up or Down")
                    }.padding()
                    Text("\(val, specifier: "%.2f")")
                        .padding()
                        .background(Color.green)
                        .font(.largeTitle)
                        .cornerRadius(10)
                }//Stepper
                Group{
                    Slider(value: $dot)
                        .padding()
                    Text("\(dot, specifier: "%.3f")")
                        .padding()
                        .font(.largeTitle)
                }//Slidder
                Group{
                    Toggle(isOn: $botan){
                        Text("Status: \(botan == true ? "On" : "Off")")
                            .padding()
                        if(botan) {Text("💩")}
                        else {Text("👏")}
                    }
                }//Toggle
            }
        }
    }
    */
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
