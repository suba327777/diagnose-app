//
//  diagnose_appApp.swift
//  Shared
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

@main
struct diagnose_appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(EnvironmentData())
        }
    }
}
