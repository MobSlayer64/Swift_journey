import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 16){

                ForEach(events){
                    event in

                    EventCard(event : event)
                }
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
