//
//  Build-Decodable.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 08/07/24.
//

import Foundation

extension Bundle {
    func loadData<T: Codable>(_ file: String) -> T {
        guard let url = Bundle.main.url(forResource: file, withExtension: nil) else {
            fatalError("JSON file \(file) not found")
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Error loading JSON data from \(file) : \(error)")
        }
    }
}
