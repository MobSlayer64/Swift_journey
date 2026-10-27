//
//  ContentView.swift
//  Testman-16
//
//  Created by iOS SDP Mac93 on 28/09/26.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {

            Text("Weekly Weather we are testing the truncate mode guide and it seem  work").truncationMode(.tail)
                .font(.title).lineLimit(1)
            Text("Weekly Weather we are testing the truncate mode guide and it seem  work").truncationMode(.head)
                .font(.title).lineLimit(1)

            HStack {

                VStack {
                    Text("Mon").font(.title)
                    Image(systemName: "cloud.rain.fill")
                    Text("rainy").foregroundStyle(.blue)
                    Text("Low 23").fontWeight(.bold)
                    Text("High 30").fontWeight(.heavy)
                }
                .border(Color.gray)
                .padding()

                VStack {
                    Text("Tue")
                    Image(systemName: "sun.max.fill")
                    Text("sunny")
                    Text("Low 28")
                    Text("High 38")
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                }
                .border(Color.gray)
                .padding()

                VStack {
                    Text("Wed").kerning(6)
                    Image(systemName: "wind")
                    Text("windy").underline()
                    Text("Low 20").strikethrough()
                    Text("High 28").italic()
                }
                .border(Color.gray)
                .padding()
            }

            HStack {

                VStack {
                    Text("Thur")
                    Image(systemName: "wind")
                    Text("windy")
                    Text("Low 20")
                    Text("High 28")
                }.tracking(8)
                .border(Color.gray)
                .padding()

                VStack {
                    Text("Fri").textCase(.uppercase)
                    Image(systemName: "cloud.rain.fill")
                        .resizable()
                        .frame(width: 40, height: 40
                        )
                    Text("rainy")
                    Text("Low 20")
                    Text("High 28")
                }
                .border(Color.gray)
                .padding()

                VStack {
                    Text("Sat")
                    Image(systemName: "cloud.rain.fill")
                        .resizable()
                        .scaledToFill()
                    Text("rainy")
                    Text("Low 25")
                    Text("High 30")
                }
                .border(Color.gray)
                .padding()
            }

            VStack {
                Text("Sun")
                Image(systemName: "cloud.rain.fill")
                    .resizable()
                    .scaledToFit()
                Text("rainy")
                Text("Low 25")
                Text("High 30")
            }
            .border(Color.gray)
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
