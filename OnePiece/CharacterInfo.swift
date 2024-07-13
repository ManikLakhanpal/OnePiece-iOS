//
//  CharacterInfo.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 13/07/24.
//

import SwiftUI

struct CharacterInfo: View {
    let name: String
    let character: StrawHats
    
    var body: some View {
        ScrollView {
            VStack {
                Image(name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: 310)
                    .clipped()
        }
        .shadow(radius: 5)
        .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Rectangle()
                    .frame(height: 2)
                    .foregroundStyle(.white.opacity(0.5))
                    .padding(.vertical)
                    .padding(.horizontal)
                    
                Text("Bounty: \(character.bounty)")
                    .font(.title2)
                    .foregroundStyle(.black.opacity(0.4))
                    .padding(.bottom)
                    
                Text(character.description)
                    
                Spacer()
                Spacer()
            }
            .padding([.leading, .trailing, .bottom
                     ])
        }
        .padding([.top, .bottom])
        .ignoresSafeArea()
        .background(Color.blue.opacity(0.6))
    }
}

#Preview {
    let charactersData: [String: StrawHats] = Bundle.main.loadData("Characters.json")
    if let characterInfo = charactersData["luffy"] {
        return CharacterInfo(name: "luffy", character: characterInfo)
    }
    return ContentView()
}
