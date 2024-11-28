//
//  ListRowView.swift
//  ToDo
//
//  Created by Sam on 11/27/24.
//

import SwiftUI

struct ListRowView: View {

    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isComplete ? "checkmark.circle" : "circle")
                .foregroundColor(item.isComplete ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    var item1: ItemModel = ItemModel(title: "First item", isComplete: false)
    var item2: ItemModel = ItemModel(title: "Second item", isComplete: true)
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
