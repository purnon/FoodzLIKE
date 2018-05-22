//
//  ViewController.swift
//  FoodzLIKE
//
//  Created by KATE on 5/17/18.
//  Copyright © 2018 Mindhill Informatics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mnum = Int()
    @IBOutlet weak var txtMenu01: UILabel!
    @IBOutlet weak var txtMenu02: UILabel!
    @IBOutlet weak var txtMenu03: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func menu01(_ sender: Any) {
        // menu 1 select
        if txtMenu01.text != "" {
            mnum = 1
        performSegue(withIdentifier: "segue01", sender: self)
        }
    }
    
    @IBAction func menu02(_ sender: Any) {
        // menu 2 select
        if txtMenu02.text != "" {
            mnum = 2
            performSegue(withIdentifier: "segue01", sender: self)
        }
    }
    
    @IBAction func menu03(_ sender: Any) {
        // menu 3 select
        if txtMenu03.text != "" {
            mnum = 3
            performSegue(withIdentifier: "segue01", sender: self)
        }
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passToSecond = segue.destination as! SecondViewController
        if mnum == 1 {
            passToSecond.passMenu01 = "\(mnum)" + ". " +  txtMenu01.text!
            passToSecond.passFlag = 1
        }
        if mnum == 2 {
            passToSecond.passMenu01 = "\(mnum)" + ". " +  txtMenu02.text!
            passToSecond.passFlag = 3        }
        if mnum == 3 {
            passToSecond.passMenu01 = "\(mnum)" + ". " +  txtMenu03.text!
            passToSecond.passFlag = 5        }
    }
    
}

