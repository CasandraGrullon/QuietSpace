//
//  ExploreListView.swift
//  QuietSpace
//
//  Created by casandra grullon on 9/10/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class ExploreListView: UIView {
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
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        return cv
    }()
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        venueSearchConstraints()
        locationSearchConstraints()
        collectionViewConstraints()
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
            collectionView.topAnchor.constraint(equalTo: locationSearchBar.bottomAnchor)
        ])
    }
    
}
