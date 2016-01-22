//
//  AFTabBarController.swift
//  DataCenter
//
//  Created by Apple on 16/1/22.
//  Copyright © 2016年 AF. All rights reserved.
//

import UIKit

class AFTabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        let homeVc1 = AFHomeVc1()
        homeVc1.title = "vc1"
        let homeVc2 = AFHomeVc2()
        homeVc2.title = "vc2"
        let homeVc3 = AFHomeVc3()
        homeVc3.title = "vc3"
        let homeVc4 = AFHomeVc4()
        homeVc4.title = "vc4"
        
        self.viewControllers = [homeVc1, homeVc2, homeVc3, homeVc4]
        
        print("init")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        let myTabBar = AFTabBar()
        myTabBar.backgroundColor = UIColor.redColor()
        myTabBar.frame = self.tabBar.frame
        self.tabBar.addSubview(myTabBar)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
