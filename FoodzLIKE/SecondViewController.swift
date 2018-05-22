//
//  SecondViewController.swift
//  FoodzLIKE
//
//  Created by KATE on 5/17/18.
//  Copyright © 2018 Mindhill Informatics. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var p2Image: UIImageView!
    @IBOutlet weak var p2Label: UILabel!
    @IBOutlet weak var lblBonus: UILabel!
    
    var passMenu01 = String()
    var passFlag = Int()
    var bNum = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bNum = Int(arc4random_uniform(100))
        p2Label.text = passMenu01
        
        p2Image.image=UIImage(named: "Food0\(passFlag)")
        
        lblBonus.text="Bonus: \(bNum)"
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
