
import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 24) {
                ForEach(courses) { course in
                    CourseCard(course: course)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
