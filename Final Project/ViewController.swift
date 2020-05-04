//
//  ViewController.swift
//  Final Project
//
//  Created by Austin Gmuer on 5/3/20.
//  Copyright © 2020 Austin Gmuer. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var webView: WKWebView!
    
    
    @IBAction func saveName(_ sender: Any) {
        
        let csvLine:String = "\n\nName:\n\(nameText.text!)\nOrder:\n"
        
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        let docDir:String=paths[0]
        let resultsFile:String=(docDir as NSString).appendingPathComponent("results.csv")
        
        
        if !FileManager.default.fileExists(atPath: resultsFile){
            FileManager.default.createFile(atPath: resultsFile, contents: nil, attributes: nil)
        }
        
        let fileHandle:FileHandle=FileHandle(forUpdatingAtPath: resultsFile)!
        fileHandle.seekToEndOfFile()
        fileHandle.write(csvLine.data(using: String.Encoding.utf8)!)
        fileHandle.closeFile()
        
        nameText.text = ""
        
    }
    
    @IBAction func openWeb(_ sender: Any) {
        if let url = URL(string: "https://www.setonhill.edu"){
            UIApplication.shared.open(url, options: [:])
        }
    }
   
        
    
    
    
    
    
    

    override func viewDidLoad() {
        
        let myURL = URL(string:"https://www.setonhill.edu")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

