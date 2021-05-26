//
//  JRTestAlert.swift
//  JRViewKit
//
//  Created by jackfrow on 2021/5/26.
//

import UIKit

class JRTestAlert: JRBaseAlertView {
    
    
    convenience init(){
        self.init(frame:CGRect(x: 0, y: 0, width: 300, height: 300))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        UIInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        UIInit()
    }
    
    func UIInit()  {
        
        self.backgroundColor = UIColor.lightGray
        
       let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        btn.backgroundColor = UIColor.blue
        self.addSubview(btn)
    }


}
