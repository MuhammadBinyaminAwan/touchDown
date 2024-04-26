//
//  Shop.swift
//  Touchdown
//
//  Created by Binyamin on 13/04/2024.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct : Bool = false
    @Published var selectedproduct : Product? = nil
}
