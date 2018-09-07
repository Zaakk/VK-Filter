//
//  Audio.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 08.09.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

struct AudioMessage:Codable {
    let duration:Int
    let waveform:[Int]
    let ogg:URL
    let mp3:URL
    
    enum CodingKeys:String, CodingKey {
        case duration, waveform
        case ogg = "link_ogg"
        case mp3 = "link_mp3"
    }
}
