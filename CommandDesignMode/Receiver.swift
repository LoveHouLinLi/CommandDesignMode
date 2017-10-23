//
//  Receiver.swift
//  CommandDesignMode
//
//  Created by DeLongYang on 2017/10/21.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class Receiver: NSObject {
    
    // 被服务的 对象
    weak var clientView:UIView?
    
    //
    var hud:CGFloat?
    var staturation:CGFloat?
    var brightness:CGFloat?
    var alpha:CGFloat?
    
    /// 变暗
    ///
    /// - Parameter paramter: 操作系数
    func  makeDark(paramter:CGFloat)
    {
        
    }
    
    
    /// 变亮
    ///
    /// - Parameter paramter: 操作系数
    func makeLighter(paramter:CGFloat) {
        
    }
}
