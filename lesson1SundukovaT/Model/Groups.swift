//
//  Groups.swift
//  lesson1SundukovaT
//
//  Created by Татьяна Сундукова on 12.12.2020.
//

import Foundation
import UIKit

struct Groups {
    let searchGroup: String
    let infoGroup: String
    let avatar: UIImage?
}

let saveTheWorld = Groups(searchGroup: "Save the World", infoGroup: "Let's save the Planet", avatar: UIImage(named: "Save the World"))
let diamonds = Groups(searchGroup: "Diamonds", infoGroup: "Diamonds are amazing", avatar: UIImage(named: "Diamonds"))
let love = Groups(searchGroup: "Love", infoGroup: "What is LOVE?", avatar: UIImage(named: "Love"))
let cats = Groups(searchGroup: "Cats", infoGroup: "We love cats", avatar: UIImage(named: "Cats"))
    


