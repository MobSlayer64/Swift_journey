//
//  griditemexample.swift
//  MyApp
//
//  Created by MobSlayer64 on 12/10/26.
//


import SwiftUI

struct GridItemExample: View {
    let fixedRows = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]

    let flexibleRows = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    let rows = [
        GridItem(.adaptive(minimum: 40))
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: flexibleRows, spacing: 15) {
                ForEach(1...50, id: \.self) { cell in
                    Color.blue
                        .frame(width: 100)
                        .overlay {
                            Text("Cell \(cell)")
                        }
                }
            }
        }
    }
}


#Preview {
    GridItemExample()
}


