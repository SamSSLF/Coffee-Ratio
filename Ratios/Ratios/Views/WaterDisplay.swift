//
//  WaterDisplay.swift
//  Ratios
//
//  Created by John Peden on 2/29/20.
//  Copyright © 2020 John Peden. All rights reserved.
//

import SwiftUI

/// A view component that displays the calculated amount of water needed
/// Based on the input coffee amount and desired ratio
struct WaterDisplay: View {
    // Two-way bindings to the input values
    @Binding var waterRatio: String    // The desired water-to-coffee ratio
    @Binding var coffee: String        // The amount of coffee in grams

    var body: some View {
        // Vertical stack to arrange the display elements
        VStack {
            // Descriptive label
            Text("You need")
                .fixedSize()
                .font(.system(size: 24))

            // Calculated water amount display
            // Uses CalculatorViewModel to compute the required water amount
            Text(
                String(
                    CalculatorViewModel.calculateGramsOfWaterTimes(
                        waterRatio: Grams(waterRatio) ?? 0.0,
                        coffee: Grams(coffee) ?? 0.0
                    )
                )
            )
                .fixedSize()
                .font(.system(size: 72))

            // Unit label
            Text("grams of water")
                .fixedSize()
                .font(.system(size: 24))
        }
    }
}
