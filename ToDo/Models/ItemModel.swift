//
//  ItemModel.swift
//  ToDo
//
//  Created by Sam on 11/27/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isComplete: Bool
}
