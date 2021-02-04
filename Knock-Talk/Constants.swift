//
//  Constans.swift
//  Knock-Talk
//
//  Created by Aleksandr Seminov on 03.02.2021.
//  Copyright © 2021 Aleksandr802. All rights reserved.
//

struct K {
    static let appName = "✏️KnockTalk"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
