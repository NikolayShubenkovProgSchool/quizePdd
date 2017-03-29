//
//  Questions.swift
//  quizePdd
//
//  Created by Polina on 28.03.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import Foundation
import UIKit

struct Questions {
    
    var title: String
    var answers : [String]
    var correctAnswer: Int
    var comments: String
    
    /* private var imageName: String
    
    var name: UIImage? {
        return UIImage(named: imageName)
    }
    */
    init?(json:[String:Any]) {
        guard let title = json["quest"] as? String,
              let answer = json["v"] as? [String],
              let correctAns = json["otvet"] as? Int,
              let comment = json["comments"] as? String
        
            //answer.contains(correctAns)
            else {
                return nil
        }
        self.answers = answer
        self.comments = comment
        self.correctAnswer = correctAns
        self.title = title
        
    }
    
    
}
