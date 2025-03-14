//
//  RatioInfo.swift
//  Ratios
//
//  Created by John Peden on 2/27/20.
//  Copyright © 2020 John Peden. All rights reserved.
//

import SwiftUI

/// A view component that displays the ratio input title
/// This appears to be a partial implementation or placeholder
/// as it only contains the title without input functionality
struct RatioInput: View {
    var body: some View {
        // Vertical stack for layout
        VStack {
            // Title label for the ratio input section
            Text("What ratio?")
                .font(.system(size: 24))
                .fixedSize()
                .foregroundColor(Color("Text"))
        }
    }
}
