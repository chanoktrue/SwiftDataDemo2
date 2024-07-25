//
//  ContentView.swift
//  SwiftDataDemo2
//
//  Created by Thongchai Subsaidee on 25/07/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var context
    @Query private var products: [Product]
    
    var body: some View {
        VStack {
            Text("Tap on this button to add data")
            Button("Add") {
                addProdcut()
            }
            List {
                ForEach(products) { product in
                    HStack {
                        Text(product.name)
                        Spacer()
                        Button(action: {
                            updateProduct(product: product)
                        }, label: {
                            Text("Button")
                        })
                    }
                }
                .onDelete(perform: { indexSet in
                    for index in indexSet {
                        deleteProduct(product: products[index])
                    }
                })
            }
        }
        .padding()
    }
    
    private func addProdcut() {
        let p = Product(name: "Test Add")
        context.insert(p)
    }
    
    private func deleteProduct(product: Product) {
        context.delete(product)
    }
    
    private func updateProduct(product: Product) {
        product.name = "update"
        try? context.save()
    }
}

#Preview {
    ContentView()
}
