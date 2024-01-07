//
//  ContentView.swift
//  ToDoSwiftData
//
//  Created by Melik Demiray on 7.01.2024.
//

import SwiftUI

struct AddToDoScreen: View {

    @State var name: String = ""
    @State var priority: Int?

    var body: some View {
        VStack {
            Form {
                TextField("Name", text: $name)
                TextField("Priority", value: $priority, format: .number)
            }
        }.padding()
    }
}

#Preview {
    AddToDoScreen()
}
