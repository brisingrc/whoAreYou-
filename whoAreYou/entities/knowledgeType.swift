//
//  knowledgeType.swift
//  whoAreYou
//
//  Created by Мак on 5/13/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import Foundation


enum KnowledgeType: String {
    case jon = "Джон Сноу"
    case attentiveViewer = "Внимательный зритель"
    case expert = "Знаток"
    
    var resultDescription: String {
        switch self {
        case .jon:
            return "Ничего ты не знаешь, Джон Сноу.Вам стоит пересмотреть Игру Престолов "
        case .attentiveViewer:
            return "Вы наверняка с нетерпением ждете премьеры заключительного сезона Игры престолов, но кое-что все таки успели подзабыть. Да,с таким количеством персонажей, хитросплетениями и неожиданными поворот - это неудивительно."
        case .expert:
            return " Вы- настоящий знаток Игры престолов."
        }
    }
}
