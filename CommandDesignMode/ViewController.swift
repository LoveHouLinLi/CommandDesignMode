//
//  ViewController.swift
//  CommandDesignMode
//
//  Created by DeLongYang on 2017/10/21.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //
    @IBAction func addClick(_ sender: Any)
    {
        let lightCommand:LighterCommand = LighterCommand(receiver: receiver!, paramter: 0.1)
        
        Invoker.sharedInstance.addAndExecute(command: lightCommand as CommandProtocol)
    }
    
    //
    @IBAction func decClick(_ sender: Any)
    {
        let darkCommand:DarkerCommand = DarkerCommand(receiver: receiver!, paramter: 0.1)
        
        Invoker.sharedInstance.addAndExecute(command: darkCommand as CommandProtocol)

    }
    
    //
    @IBAction func rollBack(_ sender: Any)
    {
        Invoker.sharedInstance.rollBack()
    }
    
    //
    var receiver:Receiver?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //
        receiver = Receiver();
        receiver?.clientView = self.view
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

