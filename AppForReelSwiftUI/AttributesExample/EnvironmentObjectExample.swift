//
//  EnvironmentObjectExample.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 15.09.2024.
//

import SwiftUI

class UserSettings2: ObservableObject {
    @Published var username: String = "User"
}

struct EnvironmentObjectExample: View {
    var body: some View {
        VStack {
            Text("Родительское представление")
                .font(.largeTitle)
                .italic()
                .foregroundColor(.pink)
                .padding(.bottom, 50)
            ChildView1()
            ChildView2()
        }
        .environmentObject(UserSettings())
    }
}

struct ChildView1: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        VStack {
            Text("Имя пользователя в первом Child: \(settings.username)")
                .font(.largeTitle)
                .underline()
                .foregroundColor(.indigo)
            TextField("Изменить имя", text: $settings.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
}

struct ChildView2: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        VStack {
            Text("Имя во втором Child: \(settings.username)")
                .font(.largeTitle)
                .underline()
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    EnvironmentObjectExample()
}
