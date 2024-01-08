//
//  ListViewScreen.swift
//  ToDoSwiftData
//
//  Created by Melik Demiray on 8.01.2024.
//

import SwiftUI
import SwiftData

struct ListViewScreen: View {

    @Query(sort: \ToDo.name, order: .forward) var toDos: [ToDo]

    var body: some View {
        NavigationStack {
            ToDoListView(toDos: toDos)
        }
    }
}

#Preview {
    ListViewScreen().modelContainer(for: [ToDo.self])
}
