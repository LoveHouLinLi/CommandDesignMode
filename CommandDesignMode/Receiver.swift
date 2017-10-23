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
    weak var clientView:UIView?{
        
        // clientView 决定Hud  staturation  因为 我们需要 从初始值 变暗 或者 变亮等的
        didSet{
            
            let color:UIColor = clientView!.backgroundColor!
            color.getHue(&hud, saturation: &staturation, brightness: &brightness, alpha: &alpha)
            
        }
    }
    
    //
    var hud:CGFloat = 0.0
    var staturation:CGFloat = 0.0  // 饱和度
    var brightness:CGFloat = 0.0
    var alpha:CGFloat = 0.0
    
    /// 变暗
    ///
    /// - Parameter paramter: 操作系数
    func  makeDark(paramter:CGFloat){
        brightness -= paramter
        brightness = max(brightness, 0)
        clientView?.backgroundColor = UIColor(hue: hud, saturation: staturation, brightness: brightness, alpha: alpha)
        
    }
    
    
    /// 变亮
    ///
    /// - Parameter paramter: 操作系数
    func makeLighter(paramter:CGFloat) {
        brightness += paramter
        brightness = min(1, brightness)
        clientView?.backgroundColor =  UIColor(hue: hud, saturation: staturation, brightness: brightness, alpha: alpha)
    }
}
