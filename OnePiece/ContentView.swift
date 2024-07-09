//
//  ContentView.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 07/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var arcs: [Arc] = Bundle.main.loadData("Arcs.json")
    @State private var strawHats: [String: StrawHats] = Bundle.main.loadData("Characters.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 130))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(arcs) { arc in
                        NavigationLink {
                            ArcInfo(arc: arc)
                        } label : {
                            VStack {
                                Text("\(arc.name)")
                                    .font(.title2)
                                    .foregroundStyle(.purple)
                                Text("Straw Hats: \(arc.straw_hats.count)")
                                    .font(.subheadline)
                            }
                            .padding([.horizontal, .vertical])
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
