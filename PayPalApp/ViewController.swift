//
//  ViewController.swift
//  PayPalApp
//
/*
 MIT License
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var balanceView: UIView!
    
    @IBOutlet weak var getMoreView: UIView!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        getMoreView.layer.cornerRadius = CGFloat(5.0)
        balanceView.layer.cornerRadius = CGFloat(5.0)
        
        balanceView.layer.shadowOpacity = Float(0.2)
        balanceView.layer.shadowOffset = CGSize(width: 2, height: 1)
        balanceView.layer.shadowRadius = CGFloat(2)
        
        var rightBarItemImage = UIImage(named: "settings_icon")
        
        rightBarItemImage = rightBarItemImage?.withRenderingMode(.alwaysOriginal)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: rightBarItemImage, style: .plain, target: nil, action: nil)
        
        let profileImmageView = UIImageView(image: UIImage(named: "profile_image"))
        
        self.navigationItem.titleView = profileImmageView
        
        var leftBarItemImage = UIImage(named: "notifications_icon")
        
        leftBarItemImage = leftBarItemImage?.withRenderingMode(.alwaysOriginal)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftBarItemImage, style: .plain, target: nil, action: nil)
        
        
        
    }

}

