//
//  Reposts.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 08.09.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

struct Reposts:Codable {
    let count:Int
    let userReposted:Bool
    
    enum CodingKeys:String, CodingKey {
        case count
        case userReposted = "user_reposted"
    }
}
