//
//  SwiftDataDemo2App.swift
//  SwiftDataDemo2
//
//  Created by Thongchai Subsaidee on 25/07/2024.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemo2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Product.self)
    }
}
