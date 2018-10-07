//
//  MenuLauncher.swift
//  Mt.Everest-Burger
//
//  Created by Divya Pandit Chhetri on 6/20/18.
//  Copyright © 2018 Divya Pandit Chhetri. All rights reserved.
//

import UIKit
class MenuLauncher: NSObject{
    
    let blackView = UIView()
    let menuView = UIView()
   
    
    let burgerImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.backgroundColor = .blue
        return imageView
    }()

    
    func launchMenu() {
        if let window = UIApplication.shared.keyWindow {
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.8)
            menuView.backgroundColor = .white
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissMenu)))
            window.addSubview(blackView)
            window.addSubview(menuView)
            menuView.addSubview(burgerImageView)
        
            
//            menuView.frame = CGRect(x: 0, y: 0, width: 0, height: window.frame.height)
//            burgerImageView.frame = CGRect(x: 0, y: 0, width: 0, height: (window.frame.height*0.3))
            menuView.frame = CGRect(x: 0, y: window.frame.height, width: 0, height: window.frame.height)
           // burgerImageView.frame = CGRect(x: , y: 0, width: 0, height: (window.frame.height*0.3))
            blackView.frame = window.frame
            blackView.alpha = 0
        
            UIView.animate(withDuration: 0.5) {
                self.blackView.alpha = 1
                self.menuView.frame = CGRect(x: 0, y: 0, width: 250, height: window.frame.height)
               // self.burgerImageView.frame = CGRect(x: 0, y: 0, width: 250, height: (window.frame.height*0.3))
                
            }
        }
    }
    
    @objc func dismissMenu() {
        UIView.animate(withDuration: 0.1) {
            self.blackView.alpha = 0
            if let window = UIApplication.shared.keyWindow{
                self.menuView.frame = CGRect(x: 0, y: window.frame.height, width: 0, height: window.frame.height)
                self.burgerImageView.frame = CGRect(x: 0, y: 0, width: 0, height: window.frame.height * 0.4)
                
            }
        }
        
    }


    
    override init() {
        super.init()
        
    }
    
    
}

