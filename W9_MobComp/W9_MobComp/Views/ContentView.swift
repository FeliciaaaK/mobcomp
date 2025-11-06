//
//  ContentView.swift
//  W9_MobComp
//
//  Created by student on 06/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            PokemonListView().navigationTitle("PokeDex")
        }
    }
}

#Preview {
    ContentView()
}
