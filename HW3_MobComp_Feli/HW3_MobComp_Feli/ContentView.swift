//
//  ContentView.swift
//  HW3_MobComp_Feli
//
//  Created by student on 29/09/25.
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
            
            SearchView()
                .tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            ProfileView()
                .tabItem{
                    Label("Add", systemImage:
                            "plus.app")
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage:
                            "person.crop.circle")
                }

        }
    }
}

struct HomeView:View{
    @State private var search = ""
    var body: some View{
        
            VStack(alignment: .leading, spacing: 20){
                HStack{
                    VStack(alignment: .leading, spacing: 10){
                        Text("Good Morning,")
                            .foregroundColor(.black)
                            .font(.system(size: 25, weight: .regular))
                        Text("NAILONG")
                            .font(.system(size: 35, weight: .bold))
                    }
                    Spacer()
                    Image("nailong")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .padding(.top, 30)
                
                TextField("Search", text: $search)
                    .padding(15)
                    .background(.white.opacity(0.88))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: .gray, radius: 10, x:1, y:1)
                
                VStack(alignment: .center, spacing: 10){
                    Text("Today's Goal")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .padding(10)
                        
                    HStack{
                        VStack{
                            Image(systemName: "figure.run")
                                .font(.system(size: 60))
                                .foregroundColor(.white)
                                .padding(.bottom, 1)
                            
                                
                            Text("4 Miles")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                                
                            Text("@Thames Route")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        .padding(15)
                        .padding(.horizontal, 14)
                        .background(.white.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: .gray, radius: 10, x:1, y:1)
                        
                        VStack{
                            Image(systemName: "figure.pool.swim")
                                .font(.system(size: 60))
                                .foregroundColor(.white)
                                .padding(10)
                                .padding(.bottom, 5)
                                
                            Text("2 Miles")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                                
                            Text("@River Lea")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        .padding(15)
                        .padding(.horizontal, 10)
                        .background(.white.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: .gray, radius: 10, x:1, y:1)
                  
                    }
                }
                .frame(width: 350, height: 270)
                .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing))
                .cornerRadius(20)
                
                
//                INFO BPM KCAL KG HR
                VStack(alignment: .center, spacing: 10){
                    HStack(spacing: 20){
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white .opacity(0.7))
                                .shadow(radius: 20)
                                .frame(width: 150, height: 80)
                            VStack{
                                Image(systemName: "heart.circle.fill")
                                    .symbolRenderingMode(.multicolor)
                                    .font(.system(size: 30))
                                    .foregroundColor(.black)
                                    .padding(.trailing, 90)
                                
                                Text("68 Bpm")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .bold))
                                    .padding(.leading, 60)
                            }
                            .padding()
                        }
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white .opacity(0.7))
                                    .shadow(radius: 20)
                                    .frame(width: 150, height: 80)
                                VStack {
                                    Image(systemName: "flame")
                                        .font(.system(size: 30))
                                        .foregroundColor(.orange)
                                        .padding(.trailing, 90)
                                    
                                    Text("0 Kcal")
                                        .foregroundColor(.black)
                                        .font(.system(size: 18, weight: .bold))
                                        .padding(.leading, 60)
                                }
                                
                            }
                        }
                    }
                }
                
                VStack(alignment: .center, spacing: 10){
                    HStack(spacing: 20){
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white .opacity(0.7))
                                .shadow(radius: 20)
                                .frame(width: 150, height: 80)
                            VStack{
                                Image(systemName: "scalemass.fill")
                                    .font(.system(size: 30))
                                    .foregroundColor(.green)
                                    .padding(.trailing, 90)
                                
                                Text("73 Kg")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .bold))
                                    .padding(.leading, 60)
                            }
                            .padding()
                        }
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white .opacity(0.7))
                                    .shadow(radius: 20)
                                    .frame(width: 150, height: 80)
                                VStack {
                                    Image(systemName: "bed.double.circle.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.blue)
                                        .padding(.trailing, 90)
                                    
                                    Text("6.2 Hr")
                                        .foregroundColor(.black)
                                        .font(.system(size: 18, weight: .bold))
                                        .padding(.leading, 60)
                                }
                                
                            }
                        }
                    }
                }
                
                
                
                
            }
            
            .padding(.horizontal, 25)
            .padding(.top, 40)
            .padding(.bottom, 30)
            .background(Color.gray.opacity(0.1))
            .ignoresSafeArea()
        
    }
}
struct SearchView:View{
    var body: some View{
        VStack{
            Text("🔍 Search")
                .font(Font.largeTitle)
            
        }
    }
}

struct ProfileView:View{
    var body: some View{
        VStack{
            Text("🐧 Profile")
                .font(Font.largeTitle)
            
        }
    }
}


#Preview {
    ContentView()
}
