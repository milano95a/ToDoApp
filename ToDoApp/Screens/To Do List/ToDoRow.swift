//
//  ToDoRow.swift
//  ToDoApp
//
//  Created by Workspace on 23/11/22.
//

import SwiftUI

struct ToDoRow: View {
    @State var toDo: ToDo
    @EnvironmentObject var viewModel: DataStore
    
    var body: some View {
        HStack  {
            Image(systemName: toDo.completed ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(toDo.completed ? Color(0x333333) : Color.secondary)
                .onTapGesture {
                    self.toDo.completed.toggle()
                    viewModel.updateToDo(toDo)
                }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 8))
            VStack(alignment: .leading) {
                Text("\(toDo.type)")
                Text("\(toDo.title)")
                    .font(.title)
            }
            .foregroundColor(toDo.completed ? Color(0x333333) : Color.white)
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 8))
            Spacer()
        }
        .background(toDo.completed ? Color.secondary :Color(0x333333))
        .cornerRadius(10)
    }
}
