//
//  ViewController.swift
//  DataCenter
//
//  Created by Apple on 16/1/22.
//  Copyright © 2016年 AF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var accountTf: UITextField!
    var passTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(red: 241, green: 241, blue: 241, alpha: 1)
        
        // 1，增加账号输入框
        let accountX: CGFloat = 10
        let accountY: CGFloat = 89
        let accountW: CGFloat = UIScreen.mainScreen().bounds.size.width - 2 * accountX
        let accountH: CGFloat = 40
        
        accountTf = UITextField.init(frame: CGRectMake(accountX, accountY, accountW, accountH))
        accountTf.borderStyle = UITextBorderStyle.RoundedRect
        accountTf.placeholder = "账号"
        
        self.view.addSubview(accountTf)
        
        // 2，增加密码输入框
        let passX: CGFloat = accountX
        let passY: CGFloat = CGRectGetMaxY(accountTf.frame) + 10
        let passW: CGFloat = accountW
        let passH: CGFloat = accountH
        
        passTf = UITextField.init(frame: CGRectMake(passX, passY, passW, passH))
        passTf.borderStyle = accountTf.borderStyle;
        passTf.placeholder = "密码"
        
        self.view.addSubview(passTf)
        
        // 3，登录按钮
        let btnX: CGFloat = accountX
        let btnY: CGFloat = CGRectGetMaxY(passTf.frame) + 10
        let btnW: CGFloat = accountW
        let btnH: CGFloat = 44
        
        let btn: UIButton = UIButton.init(frame: CGRectMake(btnX, btnY, btnW, btnH))
        btn.setTitle("登录", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn.addTarget(self, action: Selector("loginBtnClicked"), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn)
    }

    /**
     登录按钮点击事件
     */
    func loginBtnClicked()
    {
        if accountTf.text == "123" && passTf.text == "123"{
            print("密码正确，正在跳转")
            let loginVc = AFLoginVc()
            let nav = UINavigationController.init(rootViewController: loginVc)
            UIApplication.sharedApplication().keyWindow?.rootViewController = nav
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

