//
//  ResultViewController.swift
//  whoAreYou
//
//  Created by Мак on 5/20/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //Инициализировал пустой массив
    var responses = [answer]()
    var correctAnswers = 0
    
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 15
        print(responses)
        print(responses[0].type)
        
        updateResult()
        print(correctAnswers)
        resultCount()
    }
}

extension ResultViewController {
    func updateResult() {
        
        for item in responses {
            if item.type == .correct {
                print("Answer is correct")
                correctAnswers+=1
            }

        }
    }
}

extension ResultViewController {
    func resultCount(){
        if correctAnswers <= 8 {
            resultLabel.text = "Ничего ты не знаешь, Джон Сноу.Вам стоит пересмотреть Игру Престолов "
        }
        else if correctAnswers <= 15 {
            resultLabel.text = "Вы наверняка с нетерпением ждете премьеры заключительного сезона Игры престолов, но кое-что все таки успели подзабыть. Да,с таким количеством персонажей, хитросплетениями и неожиданными поворот - это неудивительно."
        }
        else {
            resultLabel.text = " Вы- настоящий знаток Игры престолов."
        }
    }
}
