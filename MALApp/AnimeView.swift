//
//  AnimeView.swift
//  MALApp
//
//  Created by Taro Altrichter on 13.03.24.
//

import SwiftUI

struct AnimeView: View {
    
    var anime: Anime
    
    var body: some View {
        VStack {
            Image(.animePlaceholder)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        
        Text(anime.title)
            .bold()
            .lineLimit(1)
            .minimumScaleFactor(0.6)
    }
}

#Preview {
    AnimeView(anime: Anime(title: "Placeholder Title"))
}
