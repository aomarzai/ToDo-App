//
//  AddView.swift
//  ToDo
//
//  Created by Sam on 11/27/24.
//

import SwiftUI

struct AddView: View {
    var body: some View {
        ScrollView {
            Text("Hi")
        }
        .navigationTitle("Add an item")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
