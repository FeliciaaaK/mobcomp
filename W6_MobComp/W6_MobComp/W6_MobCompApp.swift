//
//  W6_MobCompApp.swift
//  W6_MobComp
//
//  Created by student on 16/10/25.
//

import SwiftUI
import CoreData

@main
struct W6_MobCompApp: App {
    let persistence = PersistanceController.shared
    
    var body: some Scene {
        WindowGroup {
            let vm = CoreDataStudentViewModel(context: persistence.container.viewContext)
            CoreDataStudentView(vm:vm)
        }
    }
}
