//
//  basicgrid.swift
//  MyApp
//
//  Created by iOS SDP Mac93 on 12/10/26.
//

import SwiftUI

struct gridexample: View {
    var body: some View {
        Grid{
            GridRow{
                Text ("HEllo")
                Image(systemName: "globe")
            }
            GridRow{
                Image(systemName: "hand.wave")
                Text ("World")
            }
            GridRow{
                Image(systemName: "hand.wave")
                Text ("World")
                Text ("HEllo")

            }
        }
    }
}

#Preview {
    gridexample()
}
