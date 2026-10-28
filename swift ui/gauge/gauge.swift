//
//  gauge.swift
//  MyApp
//
//  Created by MobSlayer64 on 13/10/26.
//

import SwiftUI

struct GaugeGradient: View {
    var currentSteps: Double = 400
    var minimumSteps: Double = 0
    var maximunSteps: Double = 1000

    var gradient: Gradient = Gradient(colors: [.red, .orange, .yellow,.green])

    let rowHeight: CGFloat = 80
    var body: some View {
        VStack(spacing : 0){
            //Header
            HStack{
                Text("Gauge Style")
                    .font(.headline)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)

                Text("Visual")
                    .font(.headline)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
            }
            .padding()
            .background(Color.gray.opacity(0.1))

            Divider()

            //.linearCapacity
            HStack(alignment: .center){
                Text(".linearCapacity")
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)

                Gauge(value: currentSteps , in: 1...1000){
                    Text("Steps")}
                    .gaugeStyle(.linearCapacity)
                    .tint(gradient)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                }
                .frame(height: rowHeight)
                .padding(.horizontal)

                Divider()

                   //.accessoryLinear
                HStack(alignment: .center){
                    Text(".accessoryLinear")
                        .font(.system(.body, design: .monospaced))
                        .foregroundColor(.indigo)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)

                    Gauge(value: currentSteps , in: 1...1000){
                    }
                    .gaugeStyle(.accessoryLinear)
                        .tint(gradient)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    }
                    .frame(height: rowHeight)
                    .padding(.horizontal)

                    Divider()

            //.accessoryLinearCapacity
         HStack(alignment: .center){
             Text(".accessoryLinearCapacity")
                 .font(.system(.body, design: .monospaced))
                 .foregroundColor(.indigo)
                 .frame(maxWidth: .infinity,
                        alignment: .leading)

             Gauge(value: currentSteps , in: 1...1000){
             }
             .gaugeStyle(.accessoryLinearCapacity)
                 .tint(gradient)
                 .frame(maxWidth: .infinity,
                        alignment: .leading)
             }
             .frame(height: rowHeight)
             .padding(.horizontal)

             Divider()

            //.accessoryCircular
         HStack(alignment: .center){
             Text(".accessoryCircular")
                 .font(.system(.body, design: .monospaced))
                 .foregroundColor(.indigo)
                 .frame(maxWidth: .infinity,
                        alignment: .leading)

             Gauge(value: currentSteps , in: 1...1000){
             }
             .gaugeStyle(.accessoryCircular)
                 .tint(gradient)
                 .frame(maxWidth: .infinity,
                        alignment: .leading)
             }
             .frame(height: rowHeight)
             .padding(.horizontal)

             Divider()

            //.accessoryCircularCapacity
         HStack(alignment: .center){
             Text(".accessoryCircularCapacity")
                 .font(.system(.body, design: .monospaced))
                 .foregroundColor(.indigo)
                 .frame(maxWidth: .infinity,
                        alignment: .leading)

             Gauge(value: currentSteps , in: 1...1000){
             }
             .gaugeStyle(.accessoryCircularCapacity)
                 .tint(gradient)
                 .frame(maxWidth: .infinity,
                        alignment: .leading)
             }
             .frame(height: rowHeight)
             .padding(.horizontal)

             Divider()
            }

        }

    }


#Preview {
    GaugeGradient()
}
