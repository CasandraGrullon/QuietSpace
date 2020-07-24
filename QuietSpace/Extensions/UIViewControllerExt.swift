//
//  UIViewControllerExt.swift
//  QuietSpace
//
//  Created by casandra grullon on 7/24/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

extension UIViewController {
    //MARK:- Showing View Controller
    private static func resetWindow(_ rootViewController: UIViewController) {
        guard let scene = UIApplication.shared.connectedScenes.first,
            let sceneDelegate = scene.delegate as? SceneDelegate,
            let window = sceneDelegate.window else {
                fatalError("could not reset window rootViewController")
        }
        window.rootViewController = rootViewController
    }
    public static func showViewController(storyBoardName: String, viewControllerId: String) {
        let storyboard = UIStoryboard(name: storyBoardName, bundle: nil)
        let newVC = storyboard.instantiateViewController(identifier: viewControllerId)
        resetWindow(newVC)
    }
    public static func showLoginView() {
        showViewController(storyBoardName: "Main", viewControllerId: "LoginViewController")
    }
    public static func showSignUpView() {
        showViewController(storyBoardName: "Main", viewControllerId: "SignUpViewController")
    }
    public static func showMainAppView() {
        resetWindow(MainTabBarViewController())
    }
    
    //MARK:- Show Alerts
    public func showAlert(title: String?, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    public func showAlert(title: String?, message: String, completion: ((UIAlertAction) -> ())? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: completion)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
