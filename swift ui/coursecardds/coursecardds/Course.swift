
import SwiftUI

struct Course: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let count: String
    let level: String
    let icon: String
    let color: Color
}

let courses = [
    Course(title: "Swift Fundamentals",
           subtitle: "Variables, functions and structures",
           count: "8 lessons", level: "BEGINNER",
           icon: "book.fill", color: .blue),
    Course(title: "Build with SwiftUI",
           subtitle: "Views, modifiers and layouts",
           count: "12 lessons", level: "INTERMEDIATE",
           icon: "square.stack.3d.up.fill", color: .purple),
    Course(title: "Design Essentials",
           subtitle: "Create clear and intuitive interfaces",
           count: "6 lessons", level: "BEGINNER",
           icon: "paintbrush.fill", color: .orange),
    Course(title: "App Projects",
           subtitle: "Turn your learning into practice",
           count: "5 projects", level: "PRACTICE",
           icon: "hammer.fill", color: .green)
]


