//
//  AnalyticsService-DI.swift
//  Scan
//
//  Created by Ibrahim Hamed on 16/06/2025.
//

import Foundation

// Define the protocol
protocol AnalyticsServiceProtocol {
    func log(event: String)
}

// Concrete implementation
class AnalyticsService: AnalyticsServiceProtocol {
    func log(event: String) {
        print("Logged: \(event)")
    }
}

// ViewModel with injected service
class LoginViewModel {
    private let analyticsService: AnalyticsServiceProtocol

    init(analyticsService: AnalyticsServiceProtocol) {
        self.analyticsService = analyticsService
    }

    func loginTapped() {
        // Use the service
        analyticsService.log(event: "Login Tapped")
    }
}

// Inject dependency
let analytics = AnalyticsService()
let loginViewModel = LoginViewModel(analyticsService: analytics)
