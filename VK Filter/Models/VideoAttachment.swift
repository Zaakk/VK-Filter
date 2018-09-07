//
//  VideoAttachment.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 08.09.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

struct VideoAttachment:Codable {
    let id:Int
    let ownerId:Int
    let title:String
    let description:String
    let duration:Int
    let photo130:Int
    let photo320:Int
    let photo640:Int
    let photo800:Int
    let date:TimeInterval
    let addingDate:TimeInterval
    let views:Int
    let comments:Int
    let player:URL
    let platform:String
    let canEdit:Bool?
    let canAdd:Bool?
    let isPrivate:Bool?
    let accessKey:String
    let processing:Bool?
    let live:Bool?
    let upcoming:Bool?
    
    enum CodingKeys:String, CodingKey {
        case id, title, description, duration, date, views, comments, player, platform, processing, live, upcoming
        case ownerId = "owner_id"
        case photo130 = "photo_130"
        case photo320 = "photo_320"
        case photo640 = "photo_640"
        case photo800 = "photo_800"
        case addingDate = "adding_date"
        case canEdit = "can_edit"
        case canAdd = "can_add"
        case isPrivate = "is_private"
        case accessKey = "access_key"
    }
}
