//
//  Product.swift
//  SwiftDataDemo2
//
//  Created by Thongchai Subsaidee on 25/07/2024.
//

import Foundation
import SwiftData

@Model
class Product: Identifiable {
    let id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
    
}
