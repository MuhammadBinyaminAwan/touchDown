//
//  ContentView.swift
//  Touchdown
//
//  Created by Binyamin on 25/03/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK - PROPERTIES
    
    @EnvironmentObject var shop : Shop
    // MARK - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedproduct == nil {
                VStack (spacing : 0 ){
                    NavigationBarView()
                        .padding(.horizontal , 15)
                        .padding(.bottom)
                        .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                   
                    ScrollView (.vertical, showsIndicators: false, content: {
                        VStack (spacing:0) {
                            FeaturedTabView()
//                                .padding(.top , 10)
//                                .scaledToFit()
                                .frame(width: 380, height: 220, alignment: .center)
//
                            
                            CategoryGridView()
                            
                            TileView(title: "Helmets")
                            LazyVGrid(columns: gridLayout,spacing: 15 , content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedproduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                } //: LOOP
                            }) //:GRID
                            .padding(15)
                            
                            TileView(title: "Brands")
                            BrandGridView()
                            
                            
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    }) //: SCROLL
                }//: VSTACK
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            } else {
                ProductDetailView()
            }
        } //: ZSTACK
        .ignoresSafeArea(.all,edges: .all)
    }
}
 // MARK - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
        
    }
}
