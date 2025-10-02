//
//  ContentView.swift
//  W4_MobComp
//
//  Created by student on 02/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            TabView{
                HomeView()
                    .tabItem{
                        Label("Home", systemImage: "house.fill")
                            }
                            .badge("")
                
                DownloadView()
                    .tabItem{
                        Label("Download", systemImage: "square.and.arrow.down.fill")
                            }
                
                MyAccounts()
                    .tabItem{
                        Label("My Accounts", systemImage:
                                        "person.crop.circle.fill")
                            }


        }
        .padding()
    }
}

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let description: String
    let image: String
}

struct HomeView:View{
    
    let actionMovie: [Movie]=[
        Movie(title: "Gravida", author: "Chris Evans", description: "Sci-fi about time travel.", image: "badguys"),
        Movie(title: "Darkness", author: "Emma Watson", description: "Horror film full of suspense.", image: "insideout"),
        Movie(title: "Luctus", author: "Robert Brown", description: "Historical war drama.", image: "luca")
    ]
    
    let hororMovie: [Movie]=[
        Movie(title: "The Naked Gun (2025)", author: "Chris Evans", description: "Sci-fi about time travel.", image: "jumbo"),
        Movie(title: "The Bad Guys 2", author: "Emma Watson", description: "Horror film full of suspense.", image: "unlocked"),
        Movie(title: "Luctus", author: "Robert Brown", description: "Historical war drama.", image: "")
    ]
    
    let fantasyMovie: [Movie]=[
        Movie(title: "Gravida", author: "Chris Evans", description: "Sci-fi about time travel.", image: ""),
        Movie(title: "The Naked Gun (2025)", author: "Emma Watson", description: "Horror film full of suspense.", image: ""),
        Movie(title: "Jumbo", author: "Robert Brown", description: "Historical war drama.", image: "")
    ]
    
    @State private var search = ""
    
    
    var body: some View{
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 30){
                    VStack(alignment: .leading, spacing: 20){
                        Text("UCFlix")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.purple)
                            .padding(.horizontal)
                            .padding(.top, 10)
                        
                        TextField("Search", text: $search)
                            .padding(15)
                            .background(.white.opacity(0.88))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(color: .gray, radius: 10, x:1, y:1)
                        
                        //                    ScrollView(.horizontal){
                        //                        HStack{
                        //                            ForEach(category, id: \.self){item in
                        //                                Text(item)
                        //                                    .font(.system(size: 18, weight: .bold))
                        //                                    .padding(.horizontal)
                        //                                    .padding(.vertical, 5)
                        //                                    .background(Color.purple.opacity(0.1))
                        //                                    .cornerRadius(10)
                        //                            }
                        //                        }
                        //                    }
                            .padding(.horizontal)
                        
                    }
                    Moviecard(title: "Action", movies: actionMovie)
                    Moviecard(title:"Horor", movies: hororMovie)
                    Moviecard(title:"Fantasy Movie", movies: fantasyMovie)
                    
                    
                }
            }
        }
    }
}

struct Moviecard:View{
    let title:String
//    let movies:[Movie]
    @State var movies:[Movie]
    
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("TRENDING MOVIES")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(.horizontal){
                HStack(spacing:15){
                    ForEach($movies){ $movie in
                        
                        NavigationLink(destination: DetailView(movie:$movie)){
                            VStack(alignment: .leading, spacing: 8){
                                
                                Image(movie.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 120, height: 180)
                                    .clipped()
                                    .cornerRadius(8)
                                
                                Text(movie.title)
                                    .font(.headline)
                                    .lineLimit(1)
                                    .foregroundColor(.black)
                                Text(movie.author)
                                    .font(.caption)
                                    .foregroundColor(.blue)
                            }
                            .frame(width:120)
                        }
                        
                    }
                }
                .padding(.horizontal)
            }
            
        }
        .padding(.vertical,10)
        
    }
}

struct DetailMoviesView:View{
    @Binding var movie: Movie
    var body: some View{
        VStack{
            Image(movie.image) // nama asset harus sama persis
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 180)
                .clipped()
                .cornerRadius(8)
            
            Text(movie.title)
                .font(.headline)
                .lineLimit(1)
            Text(movie.author)
                .font(.caption)
                .foregroundColor(.gray)
            Text(movie.description)
                .font(.caption)
                .foregroundColor(.gray)
        }

            
        .navigationTitle(movie.title)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemBackground).ignoresSafeArea(edges: .bottom))
    }
}

struct DownloadView:View{
    var body: some View{
        VStack(alignment: .leading, spacing: 20){
            Text("UCFlix")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.purple)
                .padding(.horizontal)
                .padding(.top, 10)
            
        }
    }
}

struct MyAccounts:View{
    var body: some View{
        VStack{
            Text("🔍 Search")
                .font(Font.largeTitle)
            
        }
    }
}



#Preview {
    ContentView()
}


