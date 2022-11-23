//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Workspace on 23/11/22.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    var body: some Scene {
        WindowGroup {
            ToDoListView().environmentObject(DataStore())
                .environment(\.colorScheme, .dark)
        }
    }
}
