//
//  AppCoordinator.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 18/11/2020.
//

import UIKit

struct AppCoordionator: Coordinator {
    var children: [Coordinator]
    var navigationController: UINavigationController
    
    func start() {
        // Present Initial View Controller
    }
}
