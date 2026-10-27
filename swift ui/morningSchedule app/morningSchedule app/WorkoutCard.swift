//
//  WorkoutCard.swift
//  Phase 2: Component
//

import SwiftUI

struct WorkoutCard: View {
    let workout: Workout

    var body: some View {
        HStack(spacing: 12) {
            Capsule()
                .fill(workout.color)
                .frame(width: 3)

            Image(systemName: workout.icon)
                .font(.title)
                .foregroundStyle(workout.color)
                .frame(width: 44)

            VStack(alignment: .leading, spacing: 4) {
                Text(workout.time)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text(workout.title)
                    .font(.headline)
                Text("\(workout.category) • \(workout.minutes) min")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Text(workout.status)
                .font(.caption2)
                .fontWeight(.semibold)
                .foregroundStyle(workout.color)

            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(height: 64)
    }
}

#Preview {
    WorkoutCard(workout: workouts[0])
        .padding()
}
