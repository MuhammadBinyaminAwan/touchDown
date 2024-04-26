//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Binyamin on 25/03/2024.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK -PROPERTY
    let player:Player
    // MARK -BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}
// MARK -PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
