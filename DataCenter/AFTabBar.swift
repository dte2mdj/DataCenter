//
//  AFTabBar.swift
//  DataCenter
//
//  Created by Apple on 16/1/22.
//  Copyright © 2016年 AF. All rights reserved.
//

import UIKit

class AFTabBar: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        print(NSStringFromCGRect(frame))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        
        print(NSStringFromCGRect(self.frame))
        let btnW: CGFloat = self.frame.width / 4
        let btnH: CGFloat = self.frame.height
        let btnY: CGFloat = 0
        
        for i in 0...4 {
            let btnX: CGFloat = (CGFloat)i * btnW
            let btn = UIButton()
            btn.frame = CGRectMake(btnX, btnY, btnW, btnH)
            
        }
        
    }
}
