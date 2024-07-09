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
                    Text("\(arc.details)")
                    HStack {
                        ForEach(arc.straw_hats, id:\.self) { i in
                            Text(i)
                        }
                    }
                }
            }
            .navigationTitle(arc.name)
        }
    }
}

#Preview {
    let arcs: [Arc] = Bundle.main.loadData("Arcs.json")
    return ArcInfo(arc: arcs[3])
}
