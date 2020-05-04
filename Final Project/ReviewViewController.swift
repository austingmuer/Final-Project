//
//  ReviewViewController.swift
//  Final Project
//
//  Created by Austin Gmuer on 5/3/20.
//  Copyright © 2020 Austin Gmuer. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    
    @IBOutlet weak var results: UITextView!
    
    @IBAction func saveOrder(_ sender: Any) {
        
        // 1. Setup the Alert
        let alert = UIAlertController (title: "Your order has been placed.", message: "", preferredStyle: .alert)
        
        // 2. Add the Action
        alert.addAction(UIAlertAction(title: NSLocalizedString("Ok", comment: "default action"), style: .`default`, handler: { _ in}))
        
        // 3. Display the Alert
        self.present(alert,animated: true, completion: nil)
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        let docDir:String=paths[0] as String
        
        let resultsFile:String = (docDir as NSString).appendingPathComponent("results.csv")
        
        if FileManager.default.fileExists(atPath: resultsFile) {
            let fileHandle:FileHandle = FileHandle(forReadingAtPath:resultsFile)!
            let resultsData:String!=NSString(data: fileHandle.availableData, encoding: String.Encoding.utf8.rawValue)! as String
            fileHandle.closeFile()
            results?.text=resultsData
            
        } else {
            
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
