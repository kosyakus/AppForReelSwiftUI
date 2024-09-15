//
//  AppStorageExampleView.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 11.08.2024.
//

import SwiftUI

struct AppStorageExampleView: View {
    @AppStorage("username") private var username: String = "Guest"

    var body: some View {
        VStack {
            Text("Hello, \(username)!")
                .padding()

            TextField("Enter your name", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Save Name") {
                // Никаких дополнительных действий не требуется, данные сохраняются автоматически
            }
            .padding()
        }
        .padding()
    }
}

struct AppStorageExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageExampleView()
    }
}

