//
//  TaskFlowApp.swift
//  TaskFlow
//
//  Created by Aswathy on 20/04/2026.
//

import SwiftUI
import SwiftData

@main
struct TaskFlowApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            TaskEntity.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
