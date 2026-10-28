//
//  lazyvgrid.swift
//  MyApp
//
//  Created by MobSlayer64 on 12/10/26.
//

import SwiftUI

struct LazyVGridExample: View {
    let columns = [
        GridItem(.fixed(80), spacing: 50),
        GridItem(.fixed(80), spacing: 50),
        GridItem(.fixed(80))
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(1...20, id: \.self) { cell in
                    Color.red
                        .frame(height: 120)
                        .overlay {
                            Text("Cell \(cell)")
                        }
                }
            }
        }
    }
}

#Preview {
    LazyVGridExample()
}
