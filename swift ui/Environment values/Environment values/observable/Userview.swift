//
//  Userview.swift
//  Environment values
//
//  Created by MobSlayer64 on 28/10/26.
//

import SwiftUI
import Observation

@Observable
class User{
    var name = "John"
}

struct Userview: View {

@State var user = User()

    var body: some View {
        edituserview(user: user)
    }
}

struct edituserview : View {
    @Bindable var user: User
    var body: some View {
        Text("hello,\(user.name)")
        TextField("Enter your name", text: $user.name)
            .textFieldStyle(.roundedBorder)
    }
}
#Preview {
    Userview()
}
