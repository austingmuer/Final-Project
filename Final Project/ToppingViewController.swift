//
//  ToppingViewController.swift
//  Final Project
//
//  Created by Austin Gmuer on 5/3/20.
//  Copyright © 2020 Austin Gmuer. All rights reserved.
//

import UIKit

class ToppingViewController: UIViewController {
    
    @IBOutlet weak var counterDisplay: UILabel!
    @IBOutlet weak var sliderInfo: UIStepper!
    @IBOutlet weak var segmentInfo: UISegmentedControl!
    
    @IBAction func greenButton(_ sender: Any) {
        
        let csvLine:String = "Green Peppers\n"
        
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
        
        
    }
    
    @IBAction func mushroomButton(_ sender: Any) {
        
        let csvLine:String = "Mushrooms\n"
               
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
        
    }
    
    @IBAction func pepperoniButton(_ sender: Any) {
        
        let csvLine:String = "Pepperoni\n"
               
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
        
    }
    
    @IBAction func sausageButton(_ sender: Any) {
        
        let csvLine:String = "Sausage\n"
               
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
        
    }
    
    @IBAction func stepperAction(_ sender: Any) {
        counterDisplay.text = String(sliderInfo.value)
        
        let csvLine:String = "\(sliderInfo.value)\n "
                      
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
    }
    
    @IBAction func segmentChange(_ sender: Any) {
        if segmentInfo.selectedSegmentIndex == 0 {
            let csvLine:String = "4-Cut Pizza(s) - "
                                 
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
            
        }else if segmentInfo.selectedSegmentIndex == 1{
            let csvLine:String = "8-Cut Pizza(s) - "
                                 
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
        }else {
            let csvLine:String = "12-Cut Pizza(s) - "
                                 
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
