//
//  ExpDetailViewController.swift
//  NC 2 Explorer Log
//
//  Created by Aucky Riman Halim on 05/05/21.
//

import UIKit

class ExpDetailViewController: UIViewController {

    
    var explorer: Explorer?
       
    @IBOutlet var explorerImageView:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        explorerImageView.image = UIImage(named: explorer?.photo ?? "")
        
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
