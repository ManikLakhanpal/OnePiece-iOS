//
//  Bundle-Decodable.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 08/07/24.
//

import Foundation

func loadJSON() -> OnePieceArcs? {
    guard let url = Bundle.main.url(forResource: "Arcs", withExtension: "json") else {
        print("JSON file not found")
        return nil
    }
    
    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let arcs = try decoder.decode(OnePieceArcs.self, from: data)
        return arcs
    } catch {
        print("Error loading JSON data: \(error)")
        return nil
    }
}
