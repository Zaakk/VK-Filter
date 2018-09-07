//
//  Photo.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 08.09.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

struct PhotoAttachment:Codable {
    let id:Int
    let albumId:Int
    let ownerId:Int
    let userId:Int
    let text:String
    let date:Date
    
}

enum PhotoSizeType:String, Codable {
    case s, m, x, o, p, q, r, y, z, w
}

struct PhotoSize:Codable {
    let src:URL
    let width:Int
    let height:Int
    let type:PhotoSizeType
}
