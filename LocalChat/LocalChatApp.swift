//
//  LocalChatApp.swift
//  LocalChat
//
//  Created by Neel Sharma on 9/26/25.
//

import SwiftUI
import CoreData

@main
struct LocalChatApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
