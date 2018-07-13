//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Ricardo Ramirez on 7/13/18.
//  Copyright © 2018 Ricardo Ramirez. All rights reserved.
//

import Foundation
import UIKit

class PostHeaderCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    static let height: CGFloat = 54

    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    @IBAction func optionsButtonTapped(_ sender: Any) {
        print("Options Button tapped")
    }
    
}
