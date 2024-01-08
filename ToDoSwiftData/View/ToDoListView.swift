//
//  ToDoListView.swift
//  ToDoSwiftData
//
//  Created by Melik Demiray on 8.01.2024.
//

import SwiftUI

struct ToDoListView: View {

    @Environment(\.modelContext) var context
    let toDos: [ToDo]

    var body: some View {
        List {
            ForEach(toDos) { toDo in
                HStack {
                    Text(toDo.name)
                    Text("\(toDo.priority)")
                }
            }.onDelete(perform: { indexSet in
                indexSet.forEach { index in
                    let toDo = toDos[index]
                    context.delete(toDo)
                    do {
                        try context.save()
                    } catch {
                        print(error)
                    }
                }
            })
        }
    }
}
/*
#Preview {
    ToDoListView(toDos: [ToDo(name: "Test", priority: 1)]).modelContainer(for: [ToDo.self])
}

*/
