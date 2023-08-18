//
//  ContentView.swift
//  InteractiveUIs
//
//  Created by scholar on 8/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.874, saturation: 0.953, brightness: 0.93))
            TextField("Type name here...", text: $name)
                .padding()
                .multilineTextAlignment(.center)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)


            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
            }
            .border(/*@START_MENU_TOKEN@*/Color(hue: 0.894, saturation: 0.996, brightness: 0.57)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .buttonStyle(.borderedProminent)
            .tint(Color(hue: 0.863, saturation: 0.384, brightness: 0.951))
            .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
} 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
