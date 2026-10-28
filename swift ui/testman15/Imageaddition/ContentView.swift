//
//  ContentView.swift
//  testman15
//
//  Created by MobSlayer64 on 16/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image( "ss")
                .resizable()
                .scaledToFit()
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
