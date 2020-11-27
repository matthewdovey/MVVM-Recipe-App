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
        let viewModel = MainViewModel(userDefaultsService: serviceManager.userDefaultsService)
        viewController.configure(with: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}
