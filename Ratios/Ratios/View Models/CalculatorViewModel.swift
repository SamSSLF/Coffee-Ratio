//
//  CalculatorViewModel.swift
//  Ratios
//
//  Created by John Peden on 2/29/20.
//  Copyright © 2020 John Peden. All rights reserved.
//

// CalculatorViewModel.swift
// A view model that handles coffee-to-water ratio calculations for brewing coffee

import Foundation

/// Type alias for representing weights in grams
typealias Grams = Double

/// CalculatorViewModel handles the coffee brewing ratio calculations
class CalculatorViewModel {
    /// Calculates the required amount of water based on the coffee weight and desired ratio
    /// - Parameters:
    ///   - waterRatio: The desired water-to-coffee ratio (e.g., 16 for 16:1 ratio)
    ///   - coffee: The amount of coffee in grams
    /// - Returns: The amount of water needed in grams
    static func calculateGramsOfWaterTimes(waterRatio: Grams, coffee: Grams) -> Grams {
      return waterRatio * coffee
    }
}
