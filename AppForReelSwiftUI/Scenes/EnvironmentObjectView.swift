//
//  EnvironmentObjectView.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 26.08.2024.
//

import Foundation
import SwiftUI

class UserSettings: ObservableObject {
    @Published var username: String = ""
}

struct EnvironmentObjectView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        VStack {
            // Создаем экземпляры котов
            let myCat = DomesticCat(name: "Кукурузик")
            let wildCat = WildCat(name: "Тигр")
            
            // Показываем результаты их методов
            Text(myCat.meow())
            Text(myCat.play())
            Text(wildCat.meow())
            Text(wildCat.play())
        }
        .padding()
    }
}

struct EditUsernameView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        TextField("Enter your name", text: $settings.username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}
