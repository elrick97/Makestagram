//
//  StorageReference+Post.swift
//  Makestagram
//
//  Created by Ricardo Ramirez on 7/12/18.
//  Copyright © 2018 Ricardo Ramirez. All rights reserved.
//

import Foundation
import FirebaseStorage

extension StorageReference {
    static let dateFormatter = ISO8601DateFormatter()
    
    static func newPostImageReference() -> StorageReference {
        let uid = User.current.uid
        let timestamp = dateFormatter.string(from: Date())
        
        return Storage.storage().reference().child("images/posts/\(uid)/\(timestamp).jpg")
    }
}
