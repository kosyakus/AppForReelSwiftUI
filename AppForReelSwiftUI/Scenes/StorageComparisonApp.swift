//
//  StorageComparisonApp.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 15.08.2024.
//

import SwiftUI

struct StorageComparisonApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                AppStorageExampleView()
                Divider()
                UserDefaultsExampleView()
            }
            .padding()
        }
    }
}

