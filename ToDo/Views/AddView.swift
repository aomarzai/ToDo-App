//
//  AddView.swift
//  ToDo
//
//  Created by Sam on 11/27/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(
                        Color(red: 0.4, green: 0.4, blue: 0.4, opacity: 0.1)
                    )
                    .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("Add".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height:55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(16)
        }
        .navigationTitle("Add an item")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
