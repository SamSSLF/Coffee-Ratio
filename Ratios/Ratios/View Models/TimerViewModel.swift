//
//  TimerViewModel.swift
//  Ratios
//
//  Created by John Peden on 2/27/20.
//  Copyright © 2020 John Peden. All rights reserved.
//

// TimerViewModel.swift
// A view model that manages a repeating timer for tracking coffee brewing duration

import Foundation
import Combine

/// TimerViewModel handles the brewing timer functionality using Combine framework
class TimerViewModel {
    /// A publisher that emits a value every second
    public var timer = Timer.publish(every: 1, on: .current, in: .common)
    
    /// Stores the cancellable reference to stop the timer when needed
    private var cancellableTimer: Cancellable?

    /// Starts the timer by connecting to the timer publisher
    public func start() {
        cancellableTimer = timer.connect()
    }

    /// Stops the current timer and resets it
    /// This method cancels the existing timer and creates a new timer publisher
    public func stop() {
        guard let cTimer = cancellableTimer else {
            return
        }

        cTimer.cancel()
        timer = Timer.publish(every: 1, on: .current, in: .common)
    }
}
