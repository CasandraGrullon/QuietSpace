//
//  DatabaseService.swift
//  QuietSpace
//
//  Created by casandra grullon on 7/24/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class DatabaseService {
    public static let shared = DatabaseService()
    private init() {}
    
    private static let userCollection = "users"
    private static let favoritesCollection = "favorites"
    
    private let db = Firestore.firestore()
    
    //MARK:- users collection
    
    //MARK:- favorites collection
}
