//
//  SecondViewController.swift
//  whoAreYou
//
//  Created by Мак on 5/17/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

//MARK: Передай массив с ответами через Segue


import UIKit

class SecondViewController: UIViewController {

    var answersChosen = [answer]()
    var questions = Question.loadData()
    var questionIndex = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButton: [UIButton]!
    
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    @IBOutlet weak var answerFour: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerButton.append(answerTwo)
        answerButton.append(answerThree)
        answerButton.append(answerFour)
        
        
        for item in answerButton {
            item.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        }
        updateUI()
        
    }
   
    
    
    @objc func buttonPressed(_ sender: UIButton){
        let currentAnswers = questions[questionIndex].answers
        guard let buttonIndex = answerButton.firstIndex(of: sender) else {return}
        let answer = currentAnswers[buttonIndex]
        answersChosen.append(answer)
        nextQuestion()
    }

    

}

extension SecondViewController {
    /// Show next question or go to the next screen
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "secondSegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "secondSegue" else { return }
        guard let destination = segue.destination as? ResultViewController else { return }
        destination.responses = answersChosen
    }
}





// MARK: - User Interface
extension SecondViewController {
    /// Updates user interface
    func updateUI() {
        
    
        // get current question
        let currentQuestion = questions[questionIndex]
        
        questionLabel.text = currentQuestion.text
        
        
        
        // get current answers
        let currentAnswers = currentQuestion.answers
        //print(answerButton.count)
//    answerButton.setTitle
        
        
        // set navigation title
        navigationItem.title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
       
        
        updateSingleStack(using: currentAnswers)
    }
    func updateSingleStack(using answers: [answer]) {
        
        
        for (button, answer) in zip(answerButton, answers) {
            button.setTitle(answer.text, for: .normal)
        }
    }
 
    
   
    
   
}
