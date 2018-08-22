//
//  NavigationController.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 08.08.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit
import VK_ios_sdk

let kAppId:String = "6654712"
let kPermissionScope = ["friends", "photos", "audio", "video", "notes", "status", "wall", "offline", "groups"]

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        VKSdk.initialize(withAppId: kAppId).register(self)
        
        VKSdk.wakeUpSession(kPermissionScope) { (state, error) in
            guard error == nil, state != VKAuthorizationState.error else {
                dLog(message: error?.localizedDescription)
                return
            }
            var vc:UIViewController?
            switch state {
            case VKAuthorizationState.initialized:
                vc = R.storyboard.main.loginViewController()
            case VKAuthorizationState.authorized:
                vc = R.storyboard.main.mainViewController()
            default:
                break
            }
            guard let viewController = vc else {
                return
            }
            self.setViewControllers([viewController], animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension NavigationController:VKSdkDelegate {
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print(result)
    }
    
    func vkSdkUserAuthorizationFailed() {
        
    }
    
    
}
