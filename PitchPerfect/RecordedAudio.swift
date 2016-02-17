//
//  RecordedAudio.swift
//  PitchPerfect
//
//  Created by Liz Borchardt on 2/15/16.
//  Copyright © 2016 Elizabeth Borchardt. All rights reserved.
//

import Foundation

class RecordedAudio: NSObject {
    var filePathURL: NSURL!
    var title: String!
    
    init?(filePathURL: NSURL, title: String) {
        self.filePathURL = filePathURL
        self.title = title
    }
}