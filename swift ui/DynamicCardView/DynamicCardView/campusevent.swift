//
//  campusevent.swift
//  MyApp
//
//  Created by MobSlayer64 on 06/10/26.
//

import Foundation

struct CampusEvent : Identifiable {
    let id = UUID()
    let title : String
    let date : String
    let venue : String
}

let events = [
    CampusEvent(title : "SwiftUI",date : "10/10/2026", venue : "IOSDC"),
    CampusEvent(title : "UI/UX",date : "20/10/2026", venue : "IOSDC"),
    CampusEvent(title : "AI",date : "30/10/2026", venue : "CSIT Block"),
    CampusEvent(title : "SwiftUI",date : "10/10/2026", venue : "IOSDC"),
    CampusEvent(title : "UI/UX",date : "20/10/2026", venue : "IOSDC"),
    CampusEvent(title : "AI",date : "30/10/2026", venue : "CSIT Block"),
    CampusEvent(title : "SwiftUI",date : "10/10/2026", venue : "IOSDC"),
    CampusEvent(title : "UI/UX",date : "20/10/2026", venue : "IOSDC"),
    CampusEvent(title : "AI",date : "30/10/2026", venue : "CSIT Block"),
    CampusEvent(title : "SwiftUI",date : "10/10/2026", venue : "IOSDC"),
    CampusEvent(title : "UI/UX",date : "20/10/2026", venue : "IOSDC"),
    CampusEvent(title : "AI",date : "30/10/2026", venue : "CSIT Block")

]
