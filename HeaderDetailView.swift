//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Binyamin on 30/03/2024.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop : Shop
    var body: some View {
        
        VStack (alignment: .leading , spacing: 6 ) {
            Text("Productive Gear")
            
            Text(shop.selectedproduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VSTACK
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
