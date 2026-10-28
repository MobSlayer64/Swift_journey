//
//  ParentView.swift
//  Environment values
//
//  Created by MobSlayer64 on 27/10/26.
//

import SwiftUI

struct parentView: View {
    @State private var showChild = false

    var body: some View {
        Text("This is Parent View")
            .font(.title2)

        Button("Open Child View") {
            showChild = true
        }
        .buttonStyle(.borderedProminent)
        .sheet(isPresented: $showChild) {
            ChildView()
        }
    }
}

struct ChildView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            Text("This is Child View")

            Button("Close") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    parentView()
}
