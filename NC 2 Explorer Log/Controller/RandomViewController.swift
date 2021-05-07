//
//  RandomViewController.swift
//  NC 2 Explorer Log
//
//  Created by Aucky Riman Halim on 05/05/21.
//

import UIKit

class RandomViewController: UIViewController {
    
    let topicManager = TopicManager()
    var topicsarray: [String] = []
    var randomInt: Int = 0
    
    @IBOutlet weak var randomisedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for topic in topicManager.topics {
            topicsarray.append(topic.topicname)
        }
        
        randomInt = Int.random(in: 0..<topicsarray.count-1)
        randomisedLabel.text = topicsarray[randomInt]
        
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
