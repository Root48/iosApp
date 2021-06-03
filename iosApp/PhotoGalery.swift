//
//  PhotoGalery.swift
//  iosApp
//
//  Created by Admin on 22.04.2021.
//

import Foundation
import UIKit

class PhotoGalery{
    var images = [UIImage]()
    
    init() {
        setupGallery()
    }
    
    func setupGallery(){
        for i in 0...6{
            let image = UIImage(named: "image\(i)")!
            images.append(image)
        }
    }
}
