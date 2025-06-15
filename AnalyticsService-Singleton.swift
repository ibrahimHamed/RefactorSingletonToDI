//
//  AnalyticsService-Singleton.swift
//  Scan
//
//  Created by Ibrahim Hamed on 16/06/2025.
//

import Foundation

class AnalyticsService {
    static let shared = AnalyticsService()
    
    private init() {}
    
    func log(event: String) {
        print("Logged: \(event)")
    }
}

class LoginViewModel {
    func loginTapped() {
        AnalyticsService.shared.log(event: "Login Tapped")
    }
}

