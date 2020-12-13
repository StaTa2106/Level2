//
//  File.swift
//  lesson1SundukovaT
//
//  Created by Татьяна Сундукова on 12.12.2020.
//

import Foundation
import UIKit

struct Users {
    let name: String
    let avatar: UIImage?
    let photo: [UIImage?]
}
final class UsersMaker {
    static func makeFriends() -> [Users] {
        let batman = Users(name: "Batman", avatar: UIImage(named: "Batman"), photo:
            [UIImage(named: "batman1"),
            UIImage(named: "batman2"),
            UIImage(named: "batman3")])
        let cinderella = Users(name: "Cinderella", avatar: UIImage(named: "Cinderella"), photo:
                [UIImage(named: "cinderella1"),
                 UIImage(named: "cinderella2"),
                 UIImage(named: "cinderella3")])
        let prince = Users(name: "Prince", avatar: UIImage(named: "Prince"), photo:
        [UIImage(named: "prince1"),
        UIImage(named: "prince2"),
        UIImage(named: "prince3")])
        return [batman, cinderella, prince]
    }
}
/*
let batman = Users(name: "Batman", avatar: UIImage(named: "Batman"))
let cinderella = Users(name: "Cinderella", avatar: UIImage(named: "Cinderella"))
let prince = Users(name: "Prince", avatar: UIImage(named: "Prince"))

//new files*/
