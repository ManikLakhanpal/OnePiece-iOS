//
//  CharacterInfo.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 13/07/24.
//

import SwiftUI

struct CharacterInfo: View {
    let character: StrawHats
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
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
        return CharacterInfo(character: characterInfo)
    }
    return ContentView()
}
