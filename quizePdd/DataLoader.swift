//
//  DataLoader.swift
//  quizePdd
//
//  Created by Polina on 28.03.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import Foundation
import UIKit

class DataLoader {
    
    func loadData(variant: Int) ->[Questions] {
        let pathToFile = Bundle.main.path(forResource: "quiestions1-10", ofType: "json")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: pathToFile))
        let json = try! JSONSerialization.jsonObject(with: data, options: [])
        let biletJson = json as! [String:Any]
        let bilets = biletJson["bilets"] as! [Any]
        let allQuestionsSelectedVariant = bilets[variant] as! [[String: Any]]
        
        var questions = [Questions]()
        for json in allQuestionsSelectedVariant {
            questions.append(Questions(json: json)!)
        }
        return questions
    }
    
    func loadVariantsList() -> [Int] {
        let pathToFile = Bundle.main.path(forResource: "quiestions1-10", ofType: "json")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: pathToFile))
        let json = try! JSONSerialization.jsonObject(with: data, options: [])
        let biletJson = json as! [String: Any]
        let bilets = biletJson["bilets"] as! [Any]
        
        var variantsList: [Int] = []
        var i = 0
        for _ in bilets {
            i += 1
            variantsList.append(i)
        }
        return variantsList
    }
    /*func loadData(fileName:String)->(quizeName:String,questions: [Questions]) {
        let pathToFile = Bundle.main.path(forResource: fileName, ofType: "json")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: pathToFile))
        let json = try! JSONSerialization.jsonObject(with: data, options: [])
        
        guard let questionJson = json as? [String:Any] else {
            fatalError("не корректный объект с вопросами:\(json)")
        }
        
        guard let billetNumber = questionJson["bilets"] as? String ,
            let jsonsToConvert = questionJson["biletNumber"] as? [ [String:Any] ] else {
                fatalError("не корректный формат викторины")
        }
        var questions = [Questions]()
        
        for json in jsonsToConvert {
            if let aQuestion = Questions(json: json) {
                questions.append(aQuestion)
            }
        }
        if questions.count == 0 {
            fatalError("не создано ни одного вопроса")
        }
        
        return(billetNumber, questions)
        
    }
 */
}
