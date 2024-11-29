//
//  ToDoApp.swift
//  ToDo
//
//  Created by Sam on 11/26/24.
//

import SwiftUI

@main
struct ToDoApp: App {
    
    @StateObject   var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
