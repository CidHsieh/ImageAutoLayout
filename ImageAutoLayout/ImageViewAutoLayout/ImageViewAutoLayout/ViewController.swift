//
//  ViewController.swift
//  ImageViewAutoLayout
//
//  Created by Cid Hsieh on 2017/5/12.
//  Copyright © 2017年 Cid Hsieh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var orangeView: UIView!
    var greenView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        orange()
        green()
    }

    
    func orange() {
        orangeView = UIView()
        orangeView.backgroundColor = UIColor.orange
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(orangeView)
        NSLayoutConstraint(item: orangeView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: orangeView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -10).isActive = true
        NSLayoutConstraint(item: orangeView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100).isActive = true
        NSLayoutConstraint(item: orangeView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: -5).isActive = true
    }
    
    func green() {
        greenView = UIView()
        greenView.backgroundColor = UIColor.green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        NSLayoutConstraint(item: greenView, attribute: .leading, relatedBy: .equal, toItem: orangeView, attribute: .trailing, multiplier: 1.0, constant: 10).isActive = true
        NSLayoutConstraint(item: greenView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        NSLayoutConstraint(item: greenView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -10).isActive = true
        NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: orangeView, attribute: .height, multiplier: 1.0, constant: 0).isActive = true
        
    }


}

