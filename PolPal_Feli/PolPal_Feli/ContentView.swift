//
//  ContentView.swift
//  PolPal_Feli
//
//  Created by student on 27/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedFilter: FilterType = .all
    @State private var search = ""
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                // MARK: - Top Bar
                HStack {
                    Text("<< Back")
                        .font(.headline)
                        .foregroundColor(Color(hex: "1F3A45"))
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                // MARK: - Search bar
//                RoundedRectangle(cornerRadius: 16)
//                    .fill(Color.gray.opacity(0.15))
//                    .frame(height: 44)
//                    .padding(.horizontal)
//                    .padding(.top, 12)
                
                TextField("Search...", text: $search)
                    .padding(.horizontal)
                    .frame(height: 44)
                    .background(RoundedRectangle(cornerRadius: 16)
                    .fill(Color.gray.opacity(0.15))
                        )
                    .padding(.horizontal)
                    .padding(.top, 12)
                
                
                
                // MARK: - Filter Tabs
                HStack(spacing: 12) {
                    FilterButton(title: "All", isActive: selectedFilter == .all) {
                        selectedFilter = .all
                    }
                    FilterButton(title: "Published", isActive: selectedFilter == .published) {
                        selectedFilter = .published
                    }
                    FilterButton(title: "Finished", isActive: selectedFilter == .finished) {
                        selectedFilter = .finished
                    }
                    FilterButton(title: "Draft", isActive: selectedFilter == .draft) {
                        selectedFilter = .draft
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 16)
                
                // MARK: - List Cards
                ScrollView {
                    VStack(spacing: 20) {
                        SurveyCardView(status: "Published",
                                       title: "Survey Kebiasaan dan Hobi di Rumah",
                                       description: "Deskripsi singkay aja hobi apa di rumah aku si suka bacaa novell :D",
                                       date: "25 October 2025",
                                       tags: ["Education", "Biology"],
                                       actionText: "Continue..",
                                       isDisabled: false)
                        
                        SurveyCardView(status: "Finished",
                                       title: "Survey Desain Karakter Game Genshin Impact",
                                       description: "Deskripsi singkay aja hobi apa di rumah aku si suka bacaa novell :D",
                                       date: "25 October 2025",
                                       tags: ["Game", "Design"],
                                       actionText: "View More..",
                                       isDisabled: true)
                        
                        SurveyCardView(status: "Draft",
                                       title: "Cooking Mama Survey",
                                       description: "Deskripsi singkay aja hobi apa di rumah aku si suka bacaa novell :D",
                                       date: "17 October 2025",
                                       tags: ["Food", "Home"],
                                       actionText: "Continue..",
                                       isDisabled: false)
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
                
//                // MARK: - Bottom Tab Bar
//                HStack {
//                    TabBarItem(icon: "house.fill", title: "Home", isActive: true)
//                    Spacer()
//                    TabBarItem(icon: "plus.circle.fill", title: "Add", isActive: false)
//                    Spacer()
//                    TabBarItem(icon: "person.fill", title: "Profile", isActive: false)
//                }
//                .padding(.horizontal, 30)
//                .padding(.vertical, 12)
//                .background(Color.orange.opacity(0.85))
            }
        }
    }
}

// MARK: - Components

struct FilterButton: View {
    let title: String
    let isActive: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.subheadline.bold())
                .foregroundColor(isActive ? .white : Color.orange)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(
                    Capsule()
                        .fill(isActive ? Color.orange : Color.white)
                        .shadow(color: .black.opacity(0.15), radius: 4, x: 0, y: 2)
                )
        }
    }
}

struct SurveyCardView: View {
    let status: String
    let title: String
    let description: String
    let date: String
    let tags: [String]
    let actionText: String
    let isDisabled: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            HStack {
                Text(status)
                    .font(.subheadline.bold())
                    .foregroundColor(.orange)
                Spacer()
                Text(date)
                    .font(.subheadline)
                    .foregroundColor(.orange)
            }
            
            Text(title)
                .font(.title3.bold())
                .foregroundColor(Color(hex: "1F3A45"))
            
            Text(description)
                .font(.subheadline)
                .foregroundColor(Color(hex: "1F3A45").opacity(0.9))
            
            // Tags
            HStack {
                ForEach(tags, id: \.self) { tag in
                    Text(tag)
                        .font(.caption.bold())
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Capsule().fill(Color(hex: "1F3A45")))
                }
            }
            
            HStack {
                Text("👁 5000")
                    .font(.caption)
                    .foregroundColor(.orange)
                Text("✅ 1293")
                    .font(.caption)
                    .foregroundColor(.green)
                
                Spacer()
                
                Text(actionText)
                    .font(.headline)
                    .foregroundColor(isDisabled ? .gray : .orange)
                    .underline()
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.15), radius: 6, x: 0, y: 4)
        )
    }
}

struct TabBarItem: View {
    let icon: String
    let title: String
    let isActive: Bool
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.title2)
            Text(title)
                .font(.caption)
        }
        .foregroundColor(isActive ? Color(hex: "1F3A45") : .white)
    }
}

// MARK: - Filter Enum
enum FilterType {
    case all
    case published
    case finished
    case draft
}

//MARK: - Hex Color Extension
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.currentIndex = hex.startIndex
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = Double((rgbValue >> 16) & 0xFF) / 255.0
        let g = Double((rgbValue >> 8) & 0xFF) / 255.0
        let b = Double(rgbValue & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}


#Preview {
    ContentView()
}
