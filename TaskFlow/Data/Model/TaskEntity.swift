//
//  TaskEntity.swift
//  TaskFlow
//
//  Created by Aswathy on 21/04/2026.
//

import Foundation
import SwiftData

@Model
class TaskEntity {
    var id: UUID
    var title: String
    var details: String?
    var createdAt: Date
    var dueDate: Date?
    var priority: Int
    var status: String
    var isCompleted: Bool

    init(title: String) {
        self.id = UUID()
        self.title = title
        self.createdAt = Date()
        self.priority = 1
        self.status = "Todo"
        self.isCompleted = false
    }
}
