//
//  ViewController.swift
//  KMI
//
//  Created by 武淅 段 on 16/5/26.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    var height : Float!
    var weight : Float!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func didTapCheck(sender: UIButton) {
        
        let height1 = heightTextField.text
        let weight1 = weightTextField.text
        if height1?.characters.count == 0 || weight1?.characters.count == 0{
            CustomToast.showHudToastWithString("身高和体重不能为空!")
            return
        }
        let h : Float? = Float(height1!)
        let w : Float? = Float(weight1!)
        if (h>0) && (h<300) && (w>0) && (w<500){
            height = h
            weight = w
            self.performSegueWithIdentifier("detail", sender: nil)
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detail"{
            let vc = segue.destinationViewController as! ResultViewController
            vc.height = height
            vc.weight = weight
        }
    }

}

