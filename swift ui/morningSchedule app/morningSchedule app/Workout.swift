
import SwiftUI

struct Workout: Identifiable {
    let id = UUID()
    let time: String
    let title: String
    let category: String
    let minutes: Int
    let icon: String
    let color: Color
    let status: String
}

let workouts = [
    Workout(time: "7:00 AM", title: "Morning Yoga", category: "Flexibility",
            minutes: 20, icon: "figure.yoga", color: .purple, status: "COMPLETED"),
    Workout(time: "12:30 PM", title: "Core Training", category: "Strength",
            minutes: 15, icon: "figure.core.training", color: .orange, status: "UP NEXT"),
    Workout(time: "5:30 PM", title: "Evening Run", category: "Cardio",
            minutes: 30, icon: "figure.run", color: .blue, status: "SCHEDULED"),
    Workout(time: "7:00 PM", title: "Full Body Stretch", category: "Recovery",
            minutes: 10, icon: "figure.flexibility", color: .teal, status: "SCHEDULED")
]
