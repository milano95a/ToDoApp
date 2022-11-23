//
//  ToDoDetailViewModel.swift
//  ToDoApp
//
//  Created by Workspace on 23/11/22.
//

import Foundation

class ToDoDetailViewModel: ObservableObject {
    @Published var title = ""
    @Published var desc = ""
    @Published var completed = false
    var id: String?
    
    init(_ toDo: ToDo) {
        self.title = toDo.title
        self.desc = toDo.desc
        self.completed = toDo.completed
        self.id = toDo.id
    }
}
