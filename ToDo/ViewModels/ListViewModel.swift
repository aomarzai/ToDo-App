//
//  ListViewModel.swift
//  ToDo
//
//  Created by Sam on 11/28/24.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        
    }
    
    func getItems() {
         let newItems = [
            ItemModel(title: "This is the first title", isComplete: false),
            ItemModel(title: "This is the second title", isComplete: false),
            ItemModel(title: "This is the third title", isComplete: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
        
}
