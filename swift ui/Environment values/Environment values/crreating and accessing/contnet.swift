//
//  contnet.swift
//  Environment values
//
//  Created by MobSlayer64 on 28/10/26.
//

import SwiftUI

extension EnvironmentValues {
    @Entry var strokeWidth = 10.0
}
var gradient: Gradient = Gradient(colors: [.red ,.orange,.blue,.green])

struct ContnetView: View {
    @Environment(\.strokeWidth) private var strokeWidth

    var body: some View {
        ForEach(0..<3) { _ in
            Circle()
                .stroke(LinearGradient(
                    gradient: gradient,
                    startPoint: .leading,
                    endPoint: .trailing
                ), lineWidth: strokeWidth)

        }
    }
}

#Preview {
    ContnetView()
        .environment(\.strokeWidth,10)
}
