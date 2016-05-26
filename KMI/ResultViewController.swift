//
//  ResultViewController.swift
//  KMI
//
//  Created by 武淅 段 on 16/5/26.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var KMILabel: UILabel!
    
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var height : Float!
    var weight : Float!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let BMI = weight/((height/100)*(height/100))
        KMILabel.text = "\(BMI)"
        var level = ""
        if BMI<18.5{
            level = "偏瘦"
        }
        else if BMI<=22.1 && BMI>=21.9{
            level = "标准体重"
        }
        else if BMI<23.9{
            level = "正常"
        }
        else if BMI<27.9{
            level = "偏胖"
        }
        else if BMI<30{
            level = "肥胖"
        }
        else if BMI<40{
            level = "重度肥胖"
        }
        else{
            level = "极重度肥胖"
        }
        levelLabel.text = level
        
        
    }

    

}
