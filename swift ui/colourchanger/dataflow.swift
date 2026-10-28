//
//  dataflow.swift
//  MyApp
//
//  Created by MobSlayer64 on 26/10/26.
//

import SwiftUI

struct dataflow: View {
    @State private var backgroundColor: Color = .yellow
    var body: some View {
        ZStack{
            backgroundColor

            HStack{
                Button("Yellow"){
                    backgroundColor = .yellow
                }
                .foregroundStyle(.yellow)


                Button("Red"){
                    backgroundColor = .red
                }
                .foregroundStyle(.red)

                Button("Green"){
                    backgroundColor = .green
                }
                .foregroundStyle(.green)

                Button("Mint"){
                    backgroundColor = .mint
                }
                .foregroundStyle(.mint)

                Button("Random") {
                    backgroundColor = Color(
                        red: .random(in: 0...1),
                        green: .random(in: 0...1),
                        blue: .random(in: 0...1)
                    )
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()

        }
        .ignoresSafeArea()
    }
}

#Preview {
    dataflow()
}
