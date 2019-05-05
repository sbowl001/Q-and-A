//
//  SubmitQViewController.swift
//  Q&A
//
//  Created by Stephanie Bowles on 5/3/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class SubmitQViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
//    Add a questionController: QuestionController? variable.
    var questionController : QuestionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
/*
 In the action of the bar button item:
 Get the text from each text field, and make sure they aren't nil or an empty string ("").
 Call the model controller's createQuestion method
 Have the navigation controller pop to the previous view controller.*/
    
  
    @IBAction func submitQuestionTapped(_ sender: Any) {
//        if( textField.text != nil && textField.text != "" && textView.text != nil && textView.text != "") {
//            questionController?.create(question: textView.text!, asker: textField.text!)
//            navigationController?.popViewController(animated: true)
//        }
        guard let name = textField.text,
            let question = textView.text
            else { return }
        questionController?.create(question: question, asker: name)
        navigationController?.popViewController(animated: true)
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
