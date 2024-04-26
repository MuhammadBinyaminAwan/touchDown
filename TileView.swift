//
//  TileView.swift
//  Touchdown
//
//  Created by Binyamin on 27/03/2024.
//

import SwiftUI

struct TileView: View {
    
    // MARK - PROPERTIES
    
    var title: String
    // MARK - BODY
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top , 15)
        .padding(.bottom , 10)
    }
}

// MARK - PREVIEW

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView(title: "HELMET")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
