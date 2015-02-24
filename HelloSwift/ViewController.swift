//
//  ViewController.swift
//  HelloSwift
//
//  Created by Suraj on 01/12/14.
//  Copyright (c) 2014 Sonora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlets in Swift
    @IBOutlet weak var lblHelloText: UILabel!
    @IBOutlet weak var btnHitMe: UIButton!
    
    // Global Variable in Swift
    var strHelloTextString:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let iOSVersion = NSProcessInfo().operatingSystemVersionString // iOS 8 API to find Operating System Version
        println("Hello Swift with iOS:\(iOSVersion)")
    
        if strHelloTextString == nil {
            strHelloTextString = "Hello Swift with iOS:\(iOSVersion)"
        }
        
        self.loopsInSwift() // Calling a method in Swift
        
        println(self.getMultipleValuesInReturn("Mac Book Air",price: 67000.0)); // Passing and getting back Multiple Arguments to Method
        
        var myScore = [2,3,5]
        
        myScore += [11,13,17]
        
        var a = myScore[0]
        
        myScore[1] = 99
        
        var b = myScore[1]
        
        var c = myScore[0...2]
        
        
        var friends = ["john":35, "ann":29, "steve":42]
        
        var age = friends["steve"]
        
        friends["hugo"] = 30
        
        friends["john"] = 30
        
        age = friends["john"]
        
        age = friends["John"]
        
        age = friends["kamaal"]

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // IBAction in Swift
    @IBAction func hitMeButtonPressed(sender: UIButton) {
        if (lblHelloText.text? == "" && !strHelloTextString.isEmpty) {
            lblHelloText.text = strHelloTextString
            btnHitMe.setTitle("Hit Me to clear", forState:.Normal)
        } else {
            lblHelloText.text = ""
            btnHitMe.setTitle("Hit Me", forState:.Normal)
        }
    }
    
    
    func loopsInSwift () {
        let arrNumbers = [1,2,3,4,5,6,7,8,9,10] // Array in Swift
        for number in arrNumbers {
            println("\(number)")
        }
        println("End of For Each Loop")
        
        for i in 5..<arrNumbers.count {
            println(i)
        }
        println("End of For Loop")
        
        // Dictionary in Swift
        var dictShoppingItemsList = [1:"Edible Oil", 2:"Salt", 3:"Pepper"]
        println("Shopping Item at Second Position:\(dictShoppingItemsList[2])")
        
        var dictStudentDetails:[String: Int] = ["Javed":1, "Suhel":2, "Umesh":3, "Omkar":4]
        dictStudentDetails["Kamaal"] = 5                // Insert key value to Dictionary
        dictStudentDetails.removeValueForKey("Javed")   // Remove key value from Dictonary
        
        if let rollNo = dictStudentDetails["Javed"] {
            println("Roll Number of Javed: \(rollNo)")
        } else {
            println("Javed is not in class")
        }
        
        switch (3) {
        case 1...4:
            println("case matches value between 1 to 4")
        case 5:
            println("Yes its 5")
        default:
             println("No case matches")
        }
        
        switch ("abc") {
        case "a":
            println("Yes its a")
        case "abc":
            println("Yes its abc")
        default:
            println("No case matches")
        }
    }
    
    func getMultipleValuesInReturn(macType: String, price: Double) -> (String, Double) {
        var dictMacMachinesList = ["Mac Book Pro":80000.00, "iMac":125000.50, "Mac Mini":35000]
        dictMacMachinesList[macType] = price
        
        return ("Mac Mini",35000)
    }
}

