//
//  ContentView.swift
//  Ratios
//
//  Created by John Peden on 2/26/20.
//  Copyright © 2020 John Peden. All rights reserved.
//

import SwiftUI

// Main content view for the Coffee Ratio calculator app
struct ContentView: View {
    // State variables to store user input
    // coffee: stores the amount of coffee input
    // waterRatio: stores the desired water ratio
    @State var coffee: String = ""
    @State var waterRatio: String = ""

    var body: some View {
        // Main vertical stack container for all UI elements
        VStack {
            // Component for inputting coffee amount
            CoffeeInput(amount: $coffee)

            // Spacer and divider for visual separation between inputs
            VStack {
                Spacer()
                    .frame(height: CGFloat(20))

                Divider()
                    .frame(width: CGFloat(267))

                Spacer()
                    .frame(height: CGFloat(20))
            }

            // Component for inputting desired water ratio
            WaterInput(amount: $waterRatio)

            // Another visual separator
            VStack {
                Spacer()
                    .frame(height: CGFloat(20))

                Divider()
                    .frame(width: CGFloat(267))

                Spacer()
                    .frame(height: CGFloat(20))
            }

            // Component to display calculated water amount based on coffee and ratio
            WaterDisplay(
                waterRatio: $coffee,
                coffee: $waterRatio
            )

            // Bottom spacing before the timer
            Spacer()
                .frame(height: CGFloat(100))

            // Timer component for brewing
            TimerView()
        }
    }
}

// Preview provider for SwiftUI canvas
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
