//
//  ArcInfo.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 09/07/24.
//

import SwiftUI

struct ArcInfo: View {
    let arc: Arc
    let characters: [String: StrawHats]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text(arc.details)
                        .padding()
                    HStack {
                        ForEach(arc.straw_hats, id: \.self) { hat in
                            if let character = characters[hat] {
                                NavigationLink {
                                    CharacterInfo(character: character)
                                } label: {
                                    VStack {
                                        Text(character.name)
                                            .font(.headline)
                                        Text(character.bounty)
                                            .font(.subheadline)
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(8)
                                    .shadow(radius: 5)
                                }
                            } else {
                                Text(hat)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle(arc.name)
        }
    }
}
#Preview {
    let arcs: [Arc] = Bundle.main.loadData("Arcs.json")
    let characters: [String: StrawHats] = Bundle.main.loadData("Characters.json")
    return ArcInfo(arc: arcs[3], characters: characters)
}
