//
//  LighterCommand.swift
//  CommandDesignMode
//
//  Created by DeLongYang on 2017/10/23.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class LighterCommand: NSObject,CommandProtocol {
    
    weak var receiver:Receiver?
    var paramter:CGFloat?
    
    init(receiver:Receiver,paramter:CGFloat) {
        super.init();
        self.receiver = receiver;
        self.paramter = paramter;
    }
    
    
    func execute() {
        self.receiver?.makeLighter(paramter: paramter!)
    }
    
    func rollBackExecute() {
        self.receiver?.makeDark(paramter: paramter!)
    }

}
