//
//  ContentView.swift
//  ToDoSwiftData
//
//  Created by Melik Demiray on 7.01.2024.
//

import SwiftUI
import SwiftData

struct AddToDoScreen: View {

    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss

    @State var name: String = ""
    @State var priority: Int?

    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    TextField("Name", text: $name)
                    TextField("Priority", value: $priority, format: .number)
                }
            }.navigationTitle("Add ToDo")
                .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                            Text("Dismiss")
                        })
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {

                        guard let priority = priority else { return }
                        let toDo = ToDo(name: name, priority: priority)

                        context.insert(toDo)
                        do {
                            try context.save()
                        } catch {
                            print(error)
                        }

                        dismiss()

                    }, label: {
                            Text("Save")
                        })
                }
            }
        }
    }
}

#Preview {
    AddToDoScreen()
}
