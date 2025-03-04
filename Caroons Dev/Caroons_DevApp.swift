//
//  Caroons_DevApp.swift
//  Caroons Dev
//
//  Created by Fa Ainama Caldera S  on 04/03/25.
//

import SwiftUI

@main
struct Caroons_DevApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
