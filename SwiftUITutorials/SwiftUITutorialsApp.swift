//
//  SwiftUITutorialsApp.swift
//  SwiftUITutorials
//
//  Created by Ahmet Kaan UZMAN on 5.12.2021.
//

import SwiftUI

@main
struct SwiftUITutorialsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
