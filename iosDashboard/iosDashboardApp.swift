//
//  iosDashboardApp.swift
//  iosDashboard
//
//  Created by Juan Cruz Lepore on 22/06/2021.
//

import SwiftUI

@main
struct iosDashboardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
