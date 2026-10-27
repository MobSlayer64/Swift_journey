import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {

            // Movie image
            Image("movieImage")
                .resizable()
                .scaledToFill()
                .frame(height: 250)
                .clipped()
                .cornerRadius(20)
                .overlay(
                    Text("NEW RELEASE")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(),
                    alignment: .topLeading
                )

            // Movie information
            VStack(alignment: .leading, spacing: 10) {

                Text("Interstellar")
                    .font(.title)
                    .fontWeight(.bold)

                Text("A group of astronauts who travel through a wormhole to find a new home for humanity as Earth faces ecological collapse")
                    .font(.body).lineLimit(2).truncationMode(.tail)

                HStack {
                    Text("★ 4.8")
                        .foregroundColor(.yellow)

                    Text("|")

                    Text("◷ 2h 42m")
                        .foregroundColor(.blue)
                }

                Divider()

                HStack {
                    Text("₹1499")
                        .strikethrough()
                        .foregroundColor(.gray)

                    Spacer()

                    Text("₹999")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }

                Button("Book Tickets") {

                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(15)
            }
            .padding()


        }
        .padding()
        .background(Color.black)
        .foregroundColor(.white)

        VStack {

            Color.orange
                .frame(height: 180)
                .cornerRadius(30)
                .opacity(0.3)
                .overlay{
                    Color.green
                        .overlay {
                            Image("balom")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                        }
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())}

        }
    }
}

#Preview {
    ContentView()
}

