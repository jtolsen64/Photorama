//
//  Photo.swift
//  Photorama
//
//  Created by Jayden Olsen on 4/18/17.
//  Copyright © 2017 Jayden Olsen. All rights reserved.
//

import Foundation

class Photo {
    
    let title: String
    let remoteURL: URL
    let photoID: String
    let dateTaken: Date
    
    init(title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.dateTaken = dateTaken
    }
    
    
}

extension Photo: Equatable {
    static func == (lhs: Photo, rhs: Photo) -> Bool {
        //Two Photos are the same if they have the same photoID
        return lhs.photoID == rhs.photoID
    }
}
