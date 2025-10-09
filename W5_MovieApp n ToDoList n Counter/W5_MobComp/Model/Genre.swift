//
//  Genre.swift
//  W5_MobComp
//
//  Created by student on 09/10/25.
//

import Foundation

struct Genre: Identifiable, Codable, Hashable {
    let id = UUID() // di program ini tidak dibuat menambah genre, jdi pakai let
    var name: String
    var colorHex: String
    
    static let all: [Genre] = [
        .init(name: "Action", colorHex: "#E80E2f"),
        .init(name: "Romance", colorHex: "#0EEB19")
    ]
}
