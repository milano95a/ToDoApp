//
//  ToDoDetailView.swift
//  ToDoApp
//
//  Created by Workspace on 23/11/22.
//

import SwiftUI

struct ToDoDetailView: View {
    @ObservedObject var viewModel: ToDoDetailViewModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("\(viewModel.title)")
                    .font(.title)
                Text("\(viewModel.desc)").padding(EdgeInsets(top: 4, leading: 0, bottom: 0, trailing: 0))
            }
            .padding()
        }
    }
}
