
import SwiftUI

struct CourseCard: View {
    let course: Course

    var body: some View {
        HStack(spacing: 16) {
            // Icon tile with lesson count underneath
            VStack(spacing: 6) {
                RoundedRectangle(cornerRadius: 16)
                    .fill(course.color)
                    .frame(width: 64, height: 64)
                    .overlay {
                        Image(systemName: course.icon)
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                Text(course.count)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            // Title, subtitle, level
            VStack(alignment: .leading, spacing: 4) {
                Text(course.title)
                    .font(.headline)
                Text(course.subtitle)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text(course.level)
                    .font(.caption2)
                    .fontWeight(.semibold)
                    .foregroundStyle(course.color)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    CourseCard(course: courses[0])
        .padding()
}
