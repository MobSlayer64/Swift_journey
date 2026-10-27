//
//  destinationcard.swift
//  MyApp
//
//  Created by iOS SDP Mac93 on 30/09/26.
//

import SwiftUI

struct destinationcard: View {

    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing){
                Image("Kyoto2.0")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                    .cornerRadius(20)

                    Text("Kyoto")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Capsule())
                            .padding()


            }

            VStack(alignment: .leading, spacing: 10) {

                Text("Shrine tour")
                    .font(.title)
                    .fontWeight(.bold)


                Divider()

                HStack {
                    HStack {
                        Image (systemName: "location.fill")
                        Text("Japan")
                    }
                        .foregroundColor(.gray)

                    Spacer()

                    HStack{
                        Image (systemName: "star.fill")
                        Text("4.8")
                    }
                        .foregroundColor(.yellow)

                    Spacer()

                    Text("$5M")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }

                Text("*Terms and conditions applied")
                    .font(.system(size: 0.10))
                    .foregroundStyle(.gray)

                Button("Veiw Details") {
                   
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue, in:Capsule())
                .foregroundColor(.white)
                //.cornerRadius(15)
                //.clipShape(Capsule())
            }
            .padding()


        }
        .padding()
        .background(Color.white)
        .foregroundColor(.black)

        }
    }


#Preview {
    destinationcard()
}

