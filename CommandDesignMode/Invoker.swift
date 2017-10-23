//
//  Invoker.swift
//  CommandDesignMode
//
//  Created by DeLongYang on 2017/10/21.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class Invoker: NSObject {
    
    //
    var queue:NSMutableArray = NSMutableArray()
    
    // swift 中单例的初始化方法 有点特别
    static let sharedInstance:Invoker = {
        let sharedInstance = Invoker();
        return sharedInstance;
    }()
    
    // commandProtocol 的情况
    public  func addAndExecute(command:CommandProtocol){
        
        //
        self.queue.add(command)
        command.execute()
    }
    
    public  func rollBack(){
    
        if self.queue.count>0 {
            let command:CommandProtocol = self.queue.lastObject as! CommandProtocol
            command.rollBackExecute()
            self.queue.removeLastObject()

        }
    }
}

public protocol CommandProtocol:NSObjectProtocol{
    
    func  execute() ;
    
    func  rollBackExecute();
}


























