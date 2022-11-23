//
//  DataStore.swift
//  ToDoApp
//
//  Created by Workspace on 23/11/22.
//

import Foundation

class DataStore: ObservableObject {
    @Published var toDos = [ToDo]()
    @Published var numOfUncompletedTodos = 0
    
    init() {
        loadToDos()
    }
    
    func addToDo(_ toDo: ToDo) {
        // TODO: implement add to do
    }
    
    func updateToDo(_ toDo: ToDo) {
        guard let index = toDos.firstIndex(where: { $0.id == toDo.id }) else { return }
        toDos[index] = toDo
        numOfUncompletedTodos = toDos.filter { !$0.completed }.count
    }
    
    func deleteToDo(at indexSet: IndexSet) {
        // TODO: delete to do
    }
    
    func loadToDos() {
        toDos = ToDo.sampleData
        numOfUncompletedTodos = toDos.filter { !$0.completed }.count
    }
    
    func saveToDo() {
        // TODO: implement save to do
    }
}
