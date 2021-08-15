//
//  ViewController.swift
//  A815HelloNetwork
//
//  Created by 申潤五 on 2021/8/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(getNetworkStatus())
    }

    
    func getNetworkStatus()->Bool{
        if Reachability(hostName: "www.apple.com")?.currentReachabilityStatus().rawValue == 0 {
            return false
        }else{
            return true
        }
    }

}

