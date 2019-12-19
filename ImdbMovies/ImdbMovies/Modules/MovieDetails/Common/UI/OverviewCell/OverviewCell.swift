//
//  OverviewCell.swift
//  ImdbMovies
//
//  Created by Rost on 19.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class OverviewCell: BaseTableCell {
    @IBOutlet weak var overTextView: UITextView!
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
    
    
    /// ---> Setter for values on UI <--- ///
    override func setDetailsValues(_ object: MovieDetailsObject) {
        overTextView.text = object.overview
    }
    
    
    /// ---> Function for add UI customizations <--- ///
    func setupUI() {
        overTextView.roundCorners(5, border: 0.4, color: .lightGray)
    }
}