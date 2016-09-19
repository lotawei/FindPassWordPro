//
//  ViewController.swift
//  FindPassWordPro
//
//  Created by lotawei on 16/9/19.
//  Copyright © 2016年 lotawei. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
   
    var  walkview:WalkProView?
 
    override func viewDidLoad() {
        super.viewDidLoad()
        let  frame = CGRect(x:0,y:20,width:wi,height:300)
    let   strs = ["后台登录","验证实名","完成验证","什么","支付成功","啥玩意儿"]
        walkview = WalkProView(frame: frame,strs:strs)
        view.addSubview(walkview!)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         walkview?.selectindex += 1
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

}

