//
//  lazyhgrid.swift
//  MyApp
//
//  Created by iOS SDP Mac93 on 12/10/26.
//

import SwiftUI

struct aLazyHGridExample: View {
    let rows = [
        GridItem(.fixed(80), spacing: 50),
        GridItem(.fixed(80))
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(1...20, id: \.self) { cell in
                    Color.red
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
    aLazyHGridExample()
}
