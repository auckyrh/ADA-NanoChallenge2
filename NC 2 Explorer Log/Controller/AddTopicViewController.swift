//
//  AddTopicViewController.swift
//  NC 2 Explorer Log
//
//  Created by Aucky Riman Halim on 05/05/21.
//

import UIKit

class AddTopicViewController: UIViewController {

    @IBOutlet weak var btnadd: UIButton!
    @IBOutlet weak var addtopicTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnadd.layer.cornerRadius = 10
        
    }
    
    
    let topicManager = TopicManager()
    
    @IBAction func btnAddClick(_ sender: Any) {
        let text: String = addtopicTextfield.text!
        topicManager.topics.append(Topic(topicname: text))
        
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
