//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by vadim vasiatullin on 30.12.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

struct K {
    static let appName = "⚔️ ValhallaChat ⚔️"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
        static let gray = "Gray"
        static let lightGray = "LightGray"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
