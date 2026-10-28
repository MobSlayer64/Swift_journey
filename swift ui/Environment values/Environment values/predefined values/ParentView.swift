//
//  ParentView.swift
//  Environment values
//
//  Created by MobSlayer64 on 27/10/26.
//

import SwiftUI
struct ParentVeiw: View {
    var body: some View {
        VStack{
            Environmentview()
        }.padding()
    }
}

struct Environmentview : View {
    @Environment(\.colorScheme) var colorscheme
    var body: some View {
        Text("Colourscheme : \(colorscheme == .dark ? "Dark" : "Light")")
            .padding()
            .font(.title)
    }
}

#Preview{
    ParentVeiw()
}
