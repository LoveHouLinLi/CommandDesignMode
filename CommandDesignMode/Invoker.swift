//
//  Invoker.swift
//  CommandDesignMode
//
//  Created by DeLongYang on 2017/10/21.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class Invoker: NSObject {
    
    // swift 中单例的初始化方法 有点特别
    static let sharedInstance:Invoker = {
        let sharedInstance = Invoker();
        return sharedInstance;
    }()
    
}

public protocol CommandProtocol:NSObjectProtocol{
    
    func  execute() ;
    
    func  rollBackExecute();
}


























