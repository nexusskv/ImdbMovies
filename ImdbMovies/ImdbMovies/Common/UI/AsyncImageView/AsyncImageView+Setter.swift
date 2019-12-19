//
//  AsyncImageView+Setter.swift
//  ImdbMovies
//
//  Created by Rost on 19.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AsyncImageView {
    
    func setUrl(_ url: String) {
        let holderImage = UIImage(named: "cinema_holder")
        
        if !url.isEmpty {
            let url = iconUrl + url
            self.loadAsync(url, placeholder: holderImage)
        } else {
            self.image = holderImage
        }
    }
}