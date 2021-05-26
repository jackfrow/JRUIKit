//
//  ViewController.swift
//  JRViewKit
//
//  Created by jackfrow on 2021/5/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width:200, height: 50))
        btn.setTitle("tap", for: .normal)
        btn.setTitleColor(UIColor.red, for: .normal)
        btn.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        view.addSubview(btn)
        
        
        let bt2 = UIButton(frame: CGRect(x: 100, y: 300, width:200, height: 50))
        bt2.setTitle("tap2", for: .normal)
        bt2.setTitleColor(UIColor.red, for: .normal)
        bt2.addTarget(self, action: #selector(showAlert2), for: .touchUpInside)
        view.addSubview(bt2)
        
    }
    
    @objc func showAlert() {
        let alert = JRBaseAlertView()
        alert.show()
    }
    
    
    @objc func showAlert2() {
        
        let alert2 = JRTestAlert()
        alert2.show()
        
    }
    



}

