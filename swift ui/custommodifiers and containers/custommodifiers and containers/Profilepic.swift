//
//  Profilepic.swift
//  MyApp
//
//  Created by MobSlayer64 on 30/09/26.
//

import SwiftUI

import SwiftUI

struct CircularImage: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
    }
}

extension View {
    func circularImage() -> some View {
        modifier(CircularImage())
    }
}


struct Profilepic: View {
    var body: some View {
        Image("balon")
            .resizable()
            .frame(width: 200, height: 200)
            .circularImage()
    }
}

#Preview {
    Profilepic()
}
