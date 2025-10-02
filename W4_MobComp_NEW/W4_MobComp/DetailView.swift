//
//  DetailView.swift
//  W4_MobComp
//
//  Created by student on 02/10/25.
//

import SwiftUI

struct DetailView: View {
    @Binding var movie:Movie
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            
            Image(movie.image) // nama asset harus sama persis
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 420)
                .clipped()
                .cornerRadius(8)
            
            Text(movie.title)
                .font(.system(size: 24, weight: .bold))
            
            
            Text(movie.author)
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(.blue)
            Text("DESCRIPTION : \(movie.description)")
                .font(.system(size: 18, weight: .regular))
                .foregroundStyle(Color(.secondaryLabel))
        }
    }
}
