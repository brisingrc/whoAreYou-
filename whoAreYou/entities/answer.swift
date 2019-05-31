//
//  answer.swift
//  whoAreYou
//
//  Created by Мак on 5/13/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import Foundation

struct answer {
    var text: String
    var type: trueOrNot
}

enum trueOrNot {
    case correct
    case incorrect
}
