//
//  ContentView.swift
//  MyApp
//
//  Created by MobSlayer64 on 06/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 24) {
                ForEach(workouts) { workout in
                    WorkoutCard(workout: workout)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
