//
//  destinationcard.swift
//  MyApp
//
//  Created by MobSlayer64 on 30/09/26.
//


import SwiftUI

struct destinationcard: View {
    let imagename : String
    let destinationame : String
    let countryname : String
    let rating : String
    let price  : String
    let tag : String
    let tagColour : Color

    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing){
                Image(imagename)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                    .cornerRadius(20)

                    Text(tag)
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(tagColour)
                            .clipShape(Capsule())
                            .padding()


            }

            VStack(alignment: .leading, spacing: 10) {

                Text(destinationame)
                    .font(.title)
                    .fontWeight(.bold)


                Divider()

                HStack {
                    HStack {
                        Image (systemName: "location.fill")
                        Text(countryname)
                    }
                        .foregroundColor(.gray)

                    Spacer()

                    HStack{
                        Image (systemName: "star.fill")
                        Text(rating)
                    }
                        .foregroundColor(.yellow)

                    Spacer()

                    Text(price)
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



