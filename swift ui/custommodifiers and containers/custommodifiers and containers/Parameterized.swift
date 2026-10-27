//
//  Parameterized.swift
//  MyApp
//
//  Created by iOS SDP Mac93 on 30/09/26.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        content
            .overlay(alignment: .bottomTrailing) {
                Text(text)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .padding(5)
                    .background(.black)
            }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct Parameterized: View {
    var body: some View {
        Color.blue
            .frame(width: 300, height: 200)
            .watermarked(with: "Hacking with Swift") //with is used to fill in the text
    }
}

#Preview {
    Parameterized()
}

