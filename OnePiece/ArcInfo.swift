//
//  ArcInfo.swift
//  OnePiece
//
//  Created by Manik Lakhanpal on 09/07/24.
//

import SwiftUI

struct ArcInfo: View {
    let arc: Arc
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("\(arc.name)")
                    Text("\(arc.details)")
                    Text("\(arc.straw_hats)")
                }
                .navigationTitle(arc.name)
            }
        }
    }
}

#Preview {
    let arcs: [Arc] = Bundle.main.loadData("Arcs.json")
    return ArcInfo(arc: arcs[3])
}
