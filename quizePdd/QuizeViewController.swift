//
//  QuizeViewController.swift
//  quizePdd
//
//  Created by Polina on 28.03.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

class QuizeViewController: UIViewController {

    @IBOutlet var imageQuize: UIImageView!
    @IBOutlet var labelText: UILabel!
    @IBOutlet var tableViewAnswers: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    

        // Do any additional setup after loading the view.
    }

    private func loadData() {
        let loader = DataLoader()
        let result = loader.loadData(variant: 1)
       print(result)
        
    }
  

}
