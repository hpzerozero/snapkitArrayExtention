//
//  ViewController.swift
//  snapkitArrayExtention
//
//  Created by hpzerozero on 03/28/2019.
//  Copyright (c) 2019 hpzerozero. All rights reserved.
//

import UIKit
import SnapkitArrayExtention
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var array = Array<Any>()
        for idx in 0...4 {
            let label = UILabel()
            label.text = "这是一个label\(idx)"
            array.append(label)
        }
        array.snp_distributeViewsAlong(axisType: .horizontal, fixedSpacing: 10)
        array.snp_makeConstraints { (maker) in
            maker.top.equalTo(10)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

