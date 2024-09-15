//
//  CatProtocol.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 24.08.2024.
//

import Foundation
import UIKit

protocol Cat {
    var name: String { get }
    func meow() -> String
    func play() -> String
}

class DomesticCat: Cat {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func meow() -> String {
        "\(name) говорит Мяу!"
    }
    
    func play() -> String {
        "\(name) играет с клубком ниток."
    }
}

class WildCat: Cat {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func meow() -> String {
        "\(name) рычит вместо Мяу!"
    }
    
    func play() -> String {
        "\(name) охотится на добычу."
    }
}
