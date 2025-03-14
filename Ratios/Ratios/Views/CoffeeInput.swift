//
//  CoffeeInput.swift
//  Ratios
//
//  Created by John Peden on 2/27/20.
//  Copyright © 2020 John Peden. All rights reserved.
//

import Foundation
import SwiftUI

/// A view component that handles the coffee amount input
/// This view displays a text field where users can enter the amount of coffee in grams
/// and includes descriptive labels above and below the input field
struct CoffeeInput: View {
    // Two-way binding to the coffee amount string value
    // This allows the parent view to both read and write this value
    @Binding var amount: String

    var body: some View {
        // Vertical stack to arrange elements
        VStack {
            // Title label above the input field
            Text("How much coffee?")
                .bold()
                .fixedSize()
                .foregroundColor(Color("Text"))
                .font(.system(size: 24))

            // Input field for coffee amount
            // Uses a custom styled rounded rectangle border in the primary color
            TextField("", text: $amount)
                .frame(width: CGFloat(150), height: CGFloat(39))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Primary"), lineWidth: 3)
                )
                .multilineTextAlignment(.center)

            // Unit label below the input field
            Text("grams")
                .fixedSize()
                .foregroundColor(Color("Text"))
                .font(.system(size: 14))
        }
    }
}
