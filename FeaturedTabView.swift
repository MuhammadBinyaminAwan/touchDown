//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Binyamin on 25/03/2024.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView (player : player)
//                    .padding(.top , 10 )
//                    .padding(.horizontal , 15 )
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode:.always))
    }
}

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iphone 12 pro")
            .background(Color.gray)
    }
}
