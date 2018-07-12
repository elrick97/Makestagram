//
//  MGPhotoHelper.swift
//  Makestagram
//
//  Created by Ricardo Ramirez on 7/12/18.
//  Copyright © 2018 Ricardo Ramirez. All rights reserved.
//

import UIKit

class MGPhotoHelper: NSObject {

    //properties
    
    var completitionHandler: ((UIImage) -> Void)?
    
    //helper methods
    
    func presentActionSheet(from viewController: UIViewController) {
        
        let alertController = UIAlertController(title: nil, message: "Where do you want to get your picture from?", preferredStyle: .actionSheet)
 
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let capturePhotoAction = UIAlertAction(title: "Take Photo", style: .default, handler: { action in
                self.presentImagePickerController(with: .camera, from: viewController)
            })
            
            alertController.addAction(capturePhotoAction)
        }

        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let uploadAction = UIAlertAction(title: "Upload from Library", style: .default, handler: { action in
                self.presentImagePickerController(with: .photoLibrary, from: viewController)
            })
            
            alertController.addAction(uploadAction)
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)

        viewController.present(alertController, animated: true)
    }
    
    
    func presentImagePickerController(with sourceType: UIImagePickerControllerSourceType, from viewController: UIViewController){
        let imagePickerController = UIImagePickerController()
        
        imagePickerController.sourceType =  sourceType
        
        viewController.present(imagePickerController, animated: true)
    }
}



























