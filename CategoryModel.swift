//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Binyamin on 27/03/2024.
//

import Foundation

struct Category: Codable , Identifiable {
    let id : Int
    let name : String
    let image : String
}
