//
//  UserDefaultsExampleView.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 11.08.2024.
//

import SwiftUI

struct UserDefaultsExampleView: View {
    @State private var username: String = UserDefaults.standard.string(forKey: "username") ?? "Guest"

    var body: some View {
        VStack {
            Text("Hello, \(username)!")
                .padding()

            TextField("Enter your name", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Save Name") {
                UserDefaults.standard.set(username, forKey: "username")
            }
            .padding()
        }
        .padding()
    }
}

struct UserDefaultsExampleView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsExampleView()
    }
}

