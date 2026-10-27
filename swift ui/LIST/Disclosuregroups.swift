//
//  Disclosuregroups.swift
//  MyApp
//
//  Created by iOS SDP Mac93 on 27/10/26.
//

import SwiftUI

struct FAQ: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
}

struct kDisclosureGroup: View {

    let faqs: [FAQ] = [
        FAQ(
            question: "What is SwiftUI?",
            answer: "SwiftUI is a framework for building user interfaces."
        ),
        FAQ(
            question: "What is a View in SwiftUI?",
            answer: "A View represents a part of the user interface."
        ),
        FAQ(
            question: "What is @State in SwiftUI?",
            answer: "@State stores values that can change in a View."
        ),
        FAQ(
            question: "What is a Button in SwiftUI?",
            answer: "A Button performs an action when tapped."
        ),
        FAQ(
            question: "What is a DisclosureGroup?",
            answer: "It is useful for FAQs, settings, and grouped information."
        )
    ]

    var body: some View {
        List {
            ForEach(faqs) { faq in
                DisclosureGroup {
                    Text(faq.answer)
                } label: {
                    Text(faq.question)
                }
            }
        }
    }
}

#Preview {
    kDisclosureGroup()
}
