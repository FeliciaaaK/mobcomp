//
//  Task.swift
//  W5_MobComp
//
//  Created by student on 09/10/25.
//

import Foundation

struct Task: Identifiable, Codable, Hashable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
}

