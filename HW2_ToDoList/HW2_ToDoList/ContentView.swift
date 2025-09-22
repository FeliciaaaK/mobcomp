//
//  ContentView.swift
//  HW2_ToDoList
//
//  Created by student on 22/09/25.
//

import SwiftUI

struct ContentView: View {
    let ToDo = ["Belajar Swift UI", "Jogging", "Baking", "MobComp HW2", "Watch Netflix"]
    let dates = ["20 September 2025", "21 September 2025", "22 September 2025", "23 September 2025", "24 September 2025"]

//    @State private var isOn: Bool = false
    @State private var isOnArray: [Bool] = Array(repeating: false, count: 5)
    @State private var input: String = ""
    
    var body: some View {
        VStack{
            
            Text("To Do List 📚🤗")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(5)
                .frame(maxWidth: .infinity, alignment: .leading) // kiri
            
            HStack{
                TextField("Add To Do List", text: $input)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("+"){print("HUE")}
                    .buttonStyle(BorderedButtonStyle())
                    .tint(.purple)
                    .cornerRadius(20)
            }
            
            List(ToDo.indices, id: \.self) { fruit in
                VStack{
                    HStack{
                        Text(ToDo[fruit])
                        Spacer()
                        Toggle("", isOn: $isOnArray[fruit])
                            .padding(3)
                        
                    }
                    // tanggal sesuai index
                    Text(dates[fruit])
                        .font(.caption)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading) // kiri
                }
                
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
