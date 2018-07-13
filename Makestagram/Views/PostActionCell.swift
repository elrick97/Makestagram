//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Ricardo Ramirez on 7/13/18.
//  Copyright © 2018 Ricardo Ramirez. All rights reserved.
//

import Foundation
import UIKit

class PostActionCell: UITableViewCell {
    //subviews
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
     static let height: CGFloat = 46
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func likeButtonTapped(_ sender: Any) {
    }
}
