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
        GridItem(.flexible(minimum: 100, maximum: .infinity)),
        GridItem(.flexible(minimum: 100, maximum: .infinity))
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
                                Image(arc.name) // Replace with actual image name
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 210)
                                
                                Text(arc.name)
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .fontDesign(.rounded)
                                    .scaledToFill()
                                    .minimumScaleFactor(0.5)
                                    .lineLimit(1)
                                
                                Text("Straw Hats: \(arc.straw_hats.count)")
                                    .font(.subheadline)
                                    .foregroundColor(.black.opacity(0.4))
                                    .fontDesign(.rounded)
                            }
                            .frame(width: 140, height: 250)
                            .padding([.horizontal, .vertical])
                            .background(.ultraThinMaterial)
                            .cornerRadius(10)
                        }
                    }
                }
            }
            .padding([.top, .bottom])
            .background(Color.blue.opacity(0.7))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
