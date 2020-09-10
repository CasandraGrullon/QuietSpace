//
//  ExploreMapView.swift
//  QuietSpace
//
//  Created by casandra grullon on 9/10/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit
import MapKit

class ExploreMapView: UIView {
//    override func layoutSubviews() {
//        super.layoutSubviews()
//    }
    public lazy var venueSearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "search by venue"
        return searchBar
    }()
    public lazy var locationSearchBar: UISearchBar = {
       let searchBar = UISearchBar()
       searchBar.placeholder = "search by venue"
       return searchBar
    }()
    public lazy var mapKitView: MKMapView = {
        let map = MKMapView()
        return map
    }()
    public lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        return cv
    }()
    //initializers
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        mapConstraints()
        venueSearchConstraints()
        locationSearchConstraints()
        collectionViewConstraints()
    }
    //constraints
    private func mapConstraints(){
        addSubview(mapKitView)
        mapKitView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mapKitView.topAnchor.constraint(equalTo: topAnchor),
            mapKitView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mapKitView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mapKitView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    private func venueSearchConstraints() {
        addSubview(venueSearchBar)
        venueSearchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            venueSearchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            venueSearchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            venueSearchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            venueSearchBar.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    private func locationSearchConstraints() {
        addSubview(locationSearchBar)
        locationSearchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            locationSearchBar.topAnchor.constraint(equalTo: venueSearchBar.bottomAnchor, constant: 8),
            locationSearchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            locationSearchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            locationSearchBar.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    private func collectionViewConstraints() {
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            collectionView.heightAnchor.constraint(equalTo: mapKitView.heightAnchor , multiplier: 0.2)
        ])
    }
}
