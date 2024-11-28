//
//  ListView.swift
//  ToDo
//
//  Created by Sam on 11/26/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title", isComplete: false),
        ItemModel(title: "This is the second title", isComplete: false),
        ItemModel(title: "This is the third title", isComplete: false)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}

