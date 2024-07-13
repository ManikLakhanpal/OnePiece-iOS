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
                VStack {
                    Image(arc.name)
                        .resizable()
                        .scaledToFill()
                        .frame(width: .infinity, height: 300)
                        .clipped()
                }
                VStack(alignment: .leading, spacing: 20) {
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundStyle(.white.opacity(0.5))
                        .padding(.vertical)
                        .padding(.horizontal)
                    
                    Text(arc.details)
                        .padding()
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundStyle(.white.opacity(0.5))
                        .padding(.vertical)
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(arc.straw_hats, id: \.self) { hat in
                                if let character = characters[hat] {
                                    NavigationLink {
                                        CharacterInfo(name: hat, character: character)
                                    } label: {
                                        VStack {
                                            Image(hat)
                                                .resizable()
                                                .frame(width: 100, height: 100)
                                                .scaledToFit()
                                                .clipShape(.rect(cornerRadius: 10))
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .strokeBorder(.gray.opacity(0.8), lineWidth: 2)
                                                )
                                           
                                            Text(character.name)
                                                .font(.headline)
                                                .foregroundStyle(.black.opacity(0.7))
                                            
                                            Text(character.bounty)
                                                .foregroundStyle(.black.opacity(0.4))
                                        }
                                        .padding()
                                        .background(.ultraThinMaterial)
                                        .cornerRadius(8)
                                        .shadow(radius: 5)
                                    }
                                } else {
                                    Text(hat)
                                }
                            }
                        }
                        .padding(.all)
                    }
                }
            }
            .padding([.top, .bottom])
            .navigationTitle(arc.name)
            .background(Color.blue.opacity(0.7))
        }
    }
}
#Preview {
    let arcs: [Arc] = Bundle.main.loadData("Arcs.json")
    let characters: [String: StrawHats] = Bundle.main.loadData("Characters.json")
    return ArcInfo(arc: arcs[0], characters: characters)
}
