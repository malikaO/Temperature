//
//  ContentView.swift
//  Temperature
//
//  Created by malika on 24/01/2020.
//  Copyright © 2020 malika ouizbouben. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var temperature: Double = 25.0
    var backgroundColor: Color { temperature > 30 ? .red : .blue }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
                
        VStack {
            if temperature > 30 {
                Text("Il fait chaud")
                    
            } else {
                Text("Il fait froid")
            }
           Text("\(Int(temperature))°")
            Slider(value: $temperature, in: -10...50, step: 1)
            .padding()
            
            
        }
       
      }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
