//
//  ContentView.swift
//  W01-Feli
//
//  Created by student on 11/09/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack (spacing: 10){
            
            Image("nailongg")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 200)
                .clipShape(Circle()) // Potong gambar jadi lingkaran
                .overlay(
                    Circle().strokeBorder(Color.green.opacity(0.6), lineWidth: 5) // Border lingkaran
                )
                .shadow(radius: 5)
                .padding(.top, -300)

            Text("Hi!, I'm Felicia 👋")
                .font(.largeTitle)
                .foregroundStyle(.green)
                .fontWeight(.bold)
                .padding(.top, -50)
                    
            Text("My Age is 20")
                .multilineTextAlignment(.center)
                .padding()
                .font(.headline)
                .background(.ultraThinMaterial)
                .foregroundStyle(.green)
                .background(Color.yellow, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Text ("😇☺️😉")
            
                    
            }

        .padding()
    }
    // var angka1 -> variable
    // let angka1 -> konstanta (tdk bisa diganti")
    let name = "Alice"
    var age = 20
    func greet() {
        print("Hello, \(name), age, \(age)")
    }
}

#Preview {
    ContentView()
}
