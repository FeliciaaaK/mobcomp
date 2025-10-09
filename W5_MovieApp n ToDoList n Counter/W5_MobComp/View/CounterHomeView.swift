//
//  ContentView.swift
//  W5_MobComp
//
//  Created by student on 09/10/25.
//

//ALUR
//Model - ViewModel - View -> SWIFTUI
//Model - Controller - View -> LARAVEL

//Model: data nya
//ViewModel: otak nya, yg nge passing in data
//View: visual

// VIEW tdk boleh hitung", VIEW ya hanya menampilkan dan memanggil saja
// VIEWMODEL baru otak nya, dia yg hitung" function, dkk

import SwiftUI

struct CounterHomeView: View{
    
    @State private var vm = CounterVM()
    
    var body: some View{
        NavigationStack{
            VStack(spacing: 16){
                Text("Count : \(vm.count)")
                    .font(.largeTitle).bold()
                Text(vm.isEven ? "Even" : "Odd")
                    .foregroundStyle(.secondary)
                HStack{
                    Button("+"){ vm.increment()}
                        .buttonStyle(.bordered)
                    Button("-"){ vm.decrement()}
                        .buttonStyle(.bordered)
                }
                Button("Reset"){ vm.reset()}
                    .buttonStyle(.borderedProminent)
            }
            NavigationLink("Mirror screen"){
                CounterMirrorView(vm:vm)
                // vm yg ada CounterMirrorView = vm yg ada di CounterHomeView
            }
        }
    }
}


struct CounterMirrorView: View {
    var vm: CounterVM
    
    var body: some View{
        VStack(spacing: 16){
            Text("Mirror Count: \(vm.count)")
            Button("Add here") {vm.increment()}
        }
        .font(.title2)
        .padding()
    }
}



#Preview {
    CounterHomeView()
}
