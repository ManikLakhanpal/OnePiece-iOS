//
//  ContentView.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 07/07/24.
//

import SwiftUI

struct ArcView: View {
    var arc: Arc
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(arc.id)
                .font(.headline)
        }
        .padding()
    }
}

struct ContentView: View {
    @State private var arcs: OnePieceArcs?
    let layout = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if let arcs = arcs {
                    LazyVGrid(columns: layout) {
                        ArcView(arc: arcs.romance_dawn_arc)
                        ArcView(arc: arcs.orange_town_arc)
                        ArcView(arc: arcs.syrup_village_arc)
                        ArcView(arc: arcs.baratie_arc)
                        ArcView(arc: arcs.arlong_park_arc)
                        ArcView(arc: arcs.loguetown_arc)
                        ArcView(arc: arcs.reverse_mountain_arc)
                        ArcView(arc: arcs.whiskey_peak_arc)
                        ArcView(arc: arcs.little_garden_arc)
                        ArcView(arc: arcs.drum_island_arc)
                        ArcView(arc: arcs.alabasta_arc)
                        ArcView(arc: arcs.jaya_arc)
                        ArcView(arc: arcs.skypiea_arc)
                        ArcView(arc: arcs.long_ring_long_land_arc)
                        ArcView(arc: arcs.water_7_arc)
                        ArcView(arc: arcs.enies_lobby_arc)
                        ArcView(arc: arcs.thriller_bark_arc)
                        ArcView(arc: arcs.sabaody_archipelago_arc)
                        ArcView(arc: arcs.amazon_lily_arc)
                        ArcView(arc: arcs.impel_down_arc)
                        ArcView(arc: arcs.marineford_arc)
                        ArcView(arc: arcs.post_war_arc)
                        ArcView(arc: arcs.return_to_sabaody_arc)
                        ArcView(arc: arcs.fishman_island_arc)
                        ArcView(arc: arcs.punk_hazard_arc)
                        ArcView(arc: arcs.dressrosa_arc)
                        ArcView(arc: arcs.zou_arc)
                        ArcView(arc: arcs.whole_cake_island_arc)
                        ArcView(arc: arcs.wano_country_arc)
                    }
                } else {
                    Text("Loading data...")
                        .onAppear {
                            self.arcs = loadJSON()
                        }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
