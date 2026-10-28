//
//  EventCard.swift
//  DynamicCardView
//
//  Created by MobSlayer64 on 06/10/26.
//

import SwiftUI

struct EventCard: View {
    let event: CampusEvent
    var body: some View {
        HStack(spacing: 16){
            VStack(alignment: .leading, spacing: 8){
                Text(event.title)
                    .font(.headline)

                Label(event.date, systemImage: "calendar")

                Label(event.venue,
                      systemImage: "mappin.and.ellipse")
            }
            .font(.subheadline)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    EventCard(event: CampusEvent(title: "title1", date: "date1", venue: "venue1"))
}
