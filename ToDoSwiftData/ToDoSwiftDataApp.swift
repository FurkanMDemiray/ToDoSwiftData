//
//  ToDoSwiftDataApp.swift
//  ToDoSwiftData
//
//  Created by Melik Demiray on 7.01.2024.
//

import SwiftUI

@main
struct ToDoSwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                AddToDoScreen().modelContainer(for: [ToDo.self])
            }
        }
    }
}
