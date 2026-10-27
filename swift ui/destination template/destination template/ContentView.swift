import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack (spacing: 20){
                destinationcard(
                    imagename: "bal",
                    destinationame: "Grand Canyon Tour",
                    countryname: "Usa",
                    rating: "3.8",
                    price: "$20",
                    tag: "Sky",
                    tagColour: .green
                )

                destinationcard(
                    imagename: "kyoto",
                    destinationame: "Shrine Tour",
                    countryname: "Japan",
                    rating: "4.8",
                    price: "$5k",
                    tag: "spirit",
                    tagColour: .pink
                )
            }.padding()
        }
    }
}
#Preview {
    ContentView()
}
