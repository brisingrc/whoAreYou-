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
            resultLabel.text = "Ваш результат- \(correctAnswers) правильных ответов из 20.Вам стоит пересмотреть Игру Престолов "
        }
        else if correctAnswers <= 14 {
            resultLabel.text = "Ваш результат- \(correctAnswers) правильных ответов  из 20.Многое знаете, но кое-что успели подзабыть."
        }
        else {
            resultLabel.text = "Ваш результат- \(correctAnswers) правильных ответов  из 20. Вы- настоящий знаток Игры престолов."
        }
    }
}
