//
//  Documents.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 08.09.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

struct DocAttachment:Codable {
    let id:Int
    let ownerId:Int
    let title:String
    let size:Int
    let ext:String
    let url:URL
    let date:TimeInterval
    let type:DocAttachmentType
    let preview:DocAttachmentPreview?
}

enum DocAttachmentType:Int, Codable {
    case text = 1
    case archive
    case gif
    case image
    case audio
    case video
    case book
    case unknown
}

struct DocAttachmentPreview:Codable {
    let photo:[PhotoSize]?
    let graffiti:Graffiti?
    let audio:AudioMessage?
    
    enum CodingKeys:String, CodingKey {
        case photo, graffiti
        case audio = "audio_msg"
    }
}
