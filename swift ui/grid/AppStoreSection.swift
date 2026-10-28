//
//  AppStoreSection.swift
//  MyApp
//
//  Created by MobSlayer64 on 12/10/26.
//


import SwiftUI

struct AppRowView: View {
    let appNumber: Int

    var body: some View {
        HStack(spacing: 10) {
            Image("demo-image")
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )

            VStack(alignment: .leading, spacing: 5) {
                Text("App Name \(appNumber)")
                    .font(.headline)
                    .bold()

                Text("Your app description")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Button(action: {
                print("Get App \(appNumber)")
            }) {
                Text("Get")
                    .font(.caption.bold())
                    .foregroundStyle(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 6)
                    .background(.blue)
                    .clipShape(Capsule())
            }
        }
        .frame(height: 72)
    }
}

struct bAppStoreSection: View {
    let rows = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Must-Have Apps")
                .font(.title)
                .bold()

            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 5) {
                    ForEach(1...20, id: \.self) { cell in
                        AppRowView(appNumber: cell)
                            .frame(width: 370)
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
        .padding()
    }
}

#Preview {
    bAppStoreSection()
}
