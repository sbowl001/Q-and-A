//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Stephanie Bowles on 5/3/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    //    Add a questionController: QuestionController?, and a question: Question? variable.
    @IBOutlet weak var answerPerson: UITextField!
    
    @IBOutlet weak var answerQuestionPlace: UITextView!
    
    var questionController: QuestionController?
    var question: Question?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitAnswerTapped(_ sender: Any) {
//        Get the text from the text field and text view, and make sure they aren't nil or an empty string ("").
        if(answerPerson.text != nil && answerPerson.text != "" && answerQuestionPlace.text != nil && answerQuestionPlace.text != "") {
        //        Call the model controller's "Update" method to add an answer and answerer to the question that you pass in.
            questionController?.update(question: question!, with: answerQuestionPlace.text! , from: answerPerson.text!)
            //Why the ! and ?
            
             //   Have the navigation controller pop to the previous view controller.
            navigationController?.popViewController(animated: true)
            // what is this?
       
        }
    }
    func updateViews() {
//        As this view controller is only accessible upon tapping a question cell, grab the values from the question variable and place them in the corresponding labels and text field or text view. Be aware that tapping a cell that doesn't have an answer and answerer should still display the question and the name of the person who asked it. If it does have an answer and answerer, those values should also be placed in the text field and text view accordinly.
        guard isViewLoaded else {return}
        
        if(question?.answer != nil) {
            labelOne.text = question?.asker
            labelTwo.text = question?.question
            answerPerson.text = question?.answerer
            answerQuestionPlace.text = question?.answerer
            answerPerson.isEnabled = false
            answerQuestionPlace.isEditable = false
            
        } else {
            labelOne.text = question?.asker
            labelTwo.text = question?.question
            answerPerson.placeholder = "Enter name here"
            answerQuestionPlace.text = "Enter answer here"
            answerPerson.isEnabled = true
            answerQuestionPlace.isEditable = true
        }
        self.title = question?.question 
        
    }
 
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
