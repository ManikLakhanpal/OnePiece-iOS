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
            VStack(alignment: .leading) {
                Image(name)
                    .resizable()
                    .scaledToFit()
                
                Text("Bounty: \(character.bounty)")
                    .font(.title2)
                    .foregroundColor(.secondary)
                Text(character.description)
                    .font(.body)
                Spacer()
            }
        }
        .padding()
        .navigationTitle(character.name)
    }
}

#Preview {
    let charactersData: [String: StrawHats] = Bundle.main.loadData("Characters.json")
    if let characterInfo = charactersData["luffy"] {
        return CharacterInfo(name: "luffy", character: characterInfo)
    }
    return ContentView()
}
