//
//  Macroses.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 07.08.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import Foundation

func dLog(message: String?, debugTitle: String = "", filename: String = #file, function: String = #function, line: Int = #line) {
    #if DEBUG
    NSLog("\(debugTitle)")
    NSLog("[\((filename as NSString).lastPathComponent):\(line)] \(function) - \(message ?? "")")
    #endif
}

func dLog(message: Dictionary<String,Any>?, debugTitle:String = "", filename: String = #file, function: String = #function, line: Int = #line) {
    #if DEBUG
    NSLog("[\((filename as NSString).lastPathComponent):\(line)] \(function)")
    var debugStr = ""
    guard let keys = message?.keys else {
        return
    }
    for key in keys {
        debugStr += "\r\(String(describing: key)): \(String(describing: message?[key]))"
    }
    NSLog("\r––– \(debugTitle) –––\(debugStr)\r–––\r")
    #endif
}

