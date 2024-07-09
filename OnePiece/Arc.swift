//
//  Arc.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 08/07/24.
//

import Foundation

struct Arc: Identifiable, Codable {
    var id: Int // Use UUID to conform to Identifiable
    let name: String
    let straw_hats: [String]
    let details: String
}
