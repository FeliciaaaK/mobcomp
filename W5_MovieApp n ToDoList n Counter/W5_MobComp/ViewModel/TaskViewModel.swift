//
//  TaskViewModel.swift
//  W5_MobComp
//
//  Created by student on 09/10/25.
//

import Foundation
import Observation
import SwiftUI

@Observable

final class TaskViewModel{
    var tasks: [Task] = [
        .init(title: "Beli Booster"),
        .init(title: "Beli Celana Baru", isCompleted: true)
    ]
    
    func add(_ title: String){
        let clean = title.trimmingCharacters(in: .whitespacesAndNewlines)
        if clean.isEmpty { return }
        tasks.append(.init(title:clean))
        
        //trimming: kl ada spasi di dpn/blkg akan dihilangkan.
    }
    
    func remove(at offsets: IndexSet){
        tasks.remove(atOffsets: offsets)
    }
    
    func toggle(_ task: Task){
        if let idx = tasks.firstIndex(where: { $0.id == task.id}) {
            tasks[idx].isCompleted.toggle()
            // dimana id yg dipilih == id yg ada di dalam tasks
            // tasks.firstIndex artinya mengembalikan index keberapa yg id nya/ yg kondisinya spt diatas(line 35)
        }
    }
    
}

