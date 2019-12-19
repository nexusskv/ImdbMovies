//
//  MoviesViewController.swift
//  ImdbMovies
//
//  Created by Rost on 17.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class MoviesViewController: UIViewController {
    @IBOutlet weak var moviesView: UICollectionView!
    @IBOutlet weak var sortView: SortView!
    var dataArray: [MovieObject] = []
    var originalDataArray: [MovieObject] = []
    var selectedSortType: MoviesSortTypes = .none
    var currentPage = 1
    var cellMargin: CGFloat = 0.0
            
    /// ---> View life cycle  <--- ///
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        loadMovies(currentPage)
    }
}