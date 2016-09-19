//
//  WalkProView.swift
//  FindPassWordPro
//
//  Created by lotawei on 16/9/19.
//  Copyright © 2016年 lotawei. All rights reserved.
//

import UIKit
public   let   wi = UIScreen.main.bounds.size.width
private   let   he = UIScreen.main.bounds.size.height

class WalkProView: UIView {
     let   padding:CGFloat = 20
    lazy  var   toplable:UILabel  = {
        let   toplable = UILabel()
        toplable.textColor = UIColor.yellow
        toplable.font = UIFont.systemFont(ofSize: 16)
        toplable.textAlignment = .center
        toplable.frame.size  = CGSize(width: wi, height: 50)
        toplable.frame.origin = CGPoint(x: 0, y: 5)
       return  toplable
    }()
    var    selectindex:NSInteger = 0 {
        didSet{
           
            selectpro()
        }
    }
    let    btns:NSMutableArray = NSMutableArray(capacity: 0)
    var    data:[String]?
  override  init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor  = UIColor.white
    
        addSubview(self.toplable)
    
    }
    
    
    convenience   init(frame: CGRect,strs:[String]) {
        self.init(frame:frame)
        data = strs
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
   

    override func draw(_ rect: CGRect) {
        
        
        
     
      
        
            toplable.text = data?[0]
        
        
        
            let    coun =  (data?.count)!
            let  aimag = UIImage(named: "selecpro")
            var  asize = getsizeforimg(aimage: aimag!)
            var width = asize.width
        
            let   x:CGFloat  =  padding
            let   y:CGFloat = toplable.frame.maxY
        
            var  insetpad:CGFloat = ( wi - 2*padding - CGFloat( coun ) * width)/CGFloat(coun - 1 )
            while insetpad   < 0 {
                width    = width * 0.8
               insetpad = ( wi - 2*padding - CGFloat( coun ) * width)/CGFloat(coun - 1 )
            }
         asize = CGSize(width: width, height: asize.height)
            
        
        
        for  i in 0..<coun{
            let   abtn = UIButton()
            abtn.setBackgroundImage(aimag, for: .normal)
            
            abtn.frame.size = asize
            let   posx  =  x + CGFloat(i) * (insetpad + width)
            abtn.frame.origin = CGPoint(x:posx,y:y)
            addSubview(abtn)
            btns.add(abtn)
        }
        
         selectpro()
    }
    func selectpro()  {
        if selectindex < (data?.count)! {
            for  i in  0...selectindex{
                let  btn = btns[i] as!  UIButton
                
                btn.setBackgroundImage(UIImage(named:"pro"), for: .normal)
            }
            updatelab()
        }
        
    }
    func   updatelab()
    {
        toplable.text = self.data?[selectindex]
       
        
        
    }
   
    
 
    func  getsizeforimg(aimage:UIImage) ->CGSize{
        return CGSize(width: (aimage.cgImage?.width)!, height: (aimage.cgImage?.height)!)
    }

}
  
