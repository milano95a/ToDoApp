//
//  ToDo.swift
//  ToDoApp
//
//  Created by Workspace on 23/11/22.
//

import Foundation

struct ToDo: Identifiable, Codable {
    var id: String
    var type: String
    var title: String
    var desc: String
    var completed: Bool = false
    
    static var sampleData: [ToDo] {
        guard let url = Bundle.main.url(forResource: "items", withExtension: "json")
            else {
                print("Json file not found")
                return []
            }
        
        let data = try? Data(contentsOf: url)
        let toDos = try? JSONDecoder().decode([ToDo].self, from: data!)
        return toDos!
    }
}
