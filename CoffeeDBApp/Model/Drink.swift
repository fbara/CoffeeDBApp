//
//  Drink.swift
//  CoffeeDBApp
//
//  Created by Frank Bara on 7/7/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import Foundation
import SwiftUI

struct Drink: Hashable, Codable,Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
