//
//  Arcs.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 08/07/24.
//

import Foundation

struct Arc: Codable, Identifiable {
    let id: String
    let start_episode: Int
    let end_episode: Int
    let description: String
    let straw_hats: [String]
}

struct OnePieceArcs: Codable {
    var romance_dawn_arc: Arc
    var orange_town_arc: Arc
    var syrup_village_arc: Arc
    var baratie_arc: Arc
    var arlong_park_arc: Arc
    var loguetown_arc: Arc
    var reverse_mountain_arc: Arc
    var whiskey_peak_arc: Arc
    var little_garden_arc: Arc
    var drum_island_arc: Arc
    var alabasta_arc: Arc
    var jaya_arc: Arc
    var skypiea_arc: Arc
    var long_ring_long_land_arc: Arc
    var water_7_arc: Arc
    var enies_lobby_arc: Arc
    var thriller_bark_arc: Arc
    var sabaody_archipelago_arc: Arc
    var amazon_lily_arc: Arc
    var impel_down_arc: Arc
    var marineford_arc: Arc
    var post_war_arc: Arc
    var return_to_sabaody_arc: Arc
    var fishman_island_arc: Arc
    var punk_hazard_arc: Arc
    var dressrosa_arc: Arc
    var zou_arc: Arc
    var whole_cake_island_arc: Arc
    var wano_country_arc: Arc
}
