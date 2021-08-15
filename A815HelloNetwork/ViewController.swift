//
//  ViewController.swift
//  A815HelloNetwork
//
//  Created by 申潤五 on 2021/8/15.
//

import UIKit

class ViewController: UIViewController {

    var reachability: Reachability!

    override func viewDidLoad() {
        super.viewDidLoad()

        reachability = Reachability(hostName: "http://www.apple.com")
        reachability.startNotifier()
        NotificationCenter.default.addObserver(
            self,
            selector:#selector(reachabilityChanged(note:)),
            name: .reachabilityChanged,
            object: reachability
        )
    }
    @objc func reachabilityChanged(note: NSNotification) {
        print("Net work status Changed")
        print(reachability.currentReachabilityStatus())
        print()
    }
}

