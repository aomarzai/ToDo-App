//
//  ListView.swift
//  ToDo
//
//  Created by Sam on 11/26/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "first",
        "second",
        "third"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("add", destination: Text("Destination"))
        )
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}

