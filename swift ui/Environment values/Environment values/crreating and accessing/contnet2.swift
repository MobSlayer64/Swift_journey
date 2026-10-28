//
//  contnet2.swift
//  Environment values
//
//  Created by MobSlayer64 on 28/10/26.
//

import SwiftUI

struct ContnetView2: View {

    @Environment(\.strokeWidth) private var strokeWidth

    var body: some View {

        ForEach(0..<3) { _ in
            Circle()
                .stroke(.blue, lineWidth: strokeWidth)
        }

        ForEach(0..<3) { _ in
            Circle()
                .stroke(.yellow, lineWidth: strokeWidth)
        }

        ForEach(0..<3) { _ in
            Circle()
                .stroke(.red, lineWidth: strokeWidth)
        }

                }
            }

#Preview {
    ContnetView2()
}
