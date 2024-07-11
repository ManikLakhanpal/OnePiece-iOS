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
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(arcs) { arc in
                        NavigationLink {
                            ArcInfo(arc: arc, characters: strawHats)
                        } label: {
                            VStack(alignment: .center) {
                                Image(._338B48C9D3Fc5Eefe00C661Ab7Cec791) // Replace with actual image name
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 300)
                                
                                Text(arc.name)
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .fontDesign(.rounded)
                                
                                Text("Straw Hats: \(arc.straw_hats.count)")
                                    .font(.subheadline)
                                    .foregroundColor(.black.opacity(0.4))
                                    .fontDesign(.rounded)
                            }
                            .frame(width: 140, height: 350)
                            .padding([.horizontal, .vertical])
                            .background(.ultraThinMaterial)
                            .cornerRadius(10)
                        }
                    }
                }
            }
            .background(Color.orange.opacity(0.7))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
