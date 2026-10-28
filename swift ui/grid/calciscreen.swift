//
//  calciscreen.swift
//  MyApp
//
//  Created by MobSlayer64 on 12/10/26.
//


import SwiftUI

struct SymbolKeyView: View {
    let text: String
    let color: Color

    var body: some View {
        Button {
            print("Pressed \(text)")
        } label: {
            Text(text)
                .font(.title2)
                .foregroundStyle(.white)
                .frame(width: 60, height: 60)
                .background(color, in: Circle())
        }
    }
}

struct cCalculator: View {
    let columns = Array(
        repeating: GridItem(.fixed(60), spacing: 5),
        count: 4
    )

    let keys: [(String, Color)] = [
        ("⌫", .gray),
        ("+/-", .gray),
        ("%", .gray),
        ("÷", .orange),

        ("7", .gray.opacity(0.5)),
        ("8", .gray.opacity(0.5)),
        ("9", .gray.opacity(0.5)),
        ("×", .orange),

        ("4", .gray.opacity(0.5)),
        ("5", .gray.opacity(0.5)),
        ("6", .gray.opacity(0.5)),
        ("−", .orange),

        ("1", .gray.opacity(0.5)),
        ("2", .gray.opacity(0.5)),
        ("3", .gray.opacity(0.5)),
        ("+", .orange),

        ("C", .gray.opacity(0.5)),
        ("0", .gray.opacity(0.5)),
        (".", .gray.opacity(0.5)),
        ("=", .orange)
    ]

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("0")
                .font(.system(size: 48))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()

            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(
                    Array(keys.enumerated()),
                    id: \.offset
                ) { _, key in
                    SymbolKeyView(
                        text: key.0,
                        color: key.1
                    )
                }
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    cCalculator()
}
