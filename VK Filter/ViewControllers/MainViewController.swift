//
//  ViewController.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 07.08.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit
import VK_ios_sdk

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let request = VKApi.request(withMethod: "wall.get", andParameters: [VK_API_OWNER_ID: -1])
        request?.execute(resultBlock: { (response) in
            let resp = response?.parsedModel
        }, errorBlock: { (error) in
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
