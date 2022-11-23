//
//  ContentView.swift
//  ToDoApp
//
//  Created by Workspace on 23/11/22.
//

import SwiftUI

struct ToDoListView: View {
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("You have \(dataStore.numOfUncompletedTodos) uncompleted things")
                    .padding()
                List(dataStore.toDos, id: \.id) { toDo in
                    ZStack {
                        ToDoRow(toDo: toDo)
                        NavigationLink(
                            destination: ToDoDetailView(viewModel: ToDoDetailViewModel(toDo)), 
                            label: {}
                        ).opacity(0)
                    }.listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView().environmentObject(DataStore())
    }
}
