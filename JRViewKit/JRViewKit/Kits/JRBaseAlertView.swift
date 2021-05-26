//
//  JRBaseAlertView.swift
//  JRViewKit
//
//  Created by jackfrow on 2021/5/26.
//

import UIKit

class JRBaseAlertView: UIView {
   
    
    //MARK : - API
    func show()  {
    
        
        self.center = contentView.center
        contentView.isHidden = false
        let window = UIApplication.shared.keyWindow
        contentView.addSubview(self)
        window?.addSubview(contentView)
        showAlertAnimate()
        
    }
    
    fileprivate func showAlertAnimate() {
        let animation = CAKeyframeAnimation(keyPath: "transform")
        
        animation.duration = 1
        animation.isRemovedOnCompletion = true
        animation.fillMode = .forwards
        var values = [Any]()
        values.append(NSValue(caTransform3D: CATransform3DMakeScale(0.9, 0.9, 0.9)))
        values.append(NSValue(caTransform3D: CATransform3DMakeScale(1.1, 1.1, 1.1)))
        values.append(NSValue(caTransform3D: CATransform3DMakeScale(1, 1, 1)))
        animation.values = values
        contentView.layer.add(animation, forKey: "transform-animation")
    }
    
    func hide()  {
        
        self.superview?.removeFromSuperview()
        contentView.layer.removeAllAnimations()
       
    }
    
    @objc func bgClick() {
        hide()
    }
    
    //MARK: - lazy
    lazy var contentView: UIView = {
        
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.6)
        view.isUserInteractionEnabled = true
        view.isHidden = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(bgClick))
        view.addGestureRecognizer(tap)
        
        return view
    }()
    

}
