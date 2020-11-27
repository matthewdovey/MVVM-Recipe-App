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
    var serviceManager: Services
    
    func start() {
        presentMain()
    }
    
    func presentMain() {
        let viewController = MainViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
}
