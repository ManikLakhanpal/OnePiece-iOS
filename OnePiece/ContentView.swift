//
//  ContentView.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 07/07/24.
//

import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(0..<100) {
                        Text("Row \($0)")
                    }
                }
            }
            .navigationTitle("One Piece")
            .background(.orange)
        }
    }
}

#Preview {
    ContentView()
}
