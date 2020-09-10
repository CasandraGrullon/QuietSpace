//
//  ExplorePageViewController.swift
//  QuietSpace
//
//  Created by casandra grullon on 7/24/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class ExplorePageViewController: UIViewController {
    private var listView = ExploreListView()
    private var mapView = ExploreMapView()
    
    override func loadView() {
        self.view = listView
    }
    
    private var mapViewSet = false {
        didSet {
            if mapViewSet {
                self.view = mapView
            } else {
                self.view = listView
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    private func configureCollectionView() {
        
    }
    
    
}
