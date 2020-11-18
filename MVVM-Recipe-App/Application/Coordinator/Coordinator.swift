//
//  Coordinator.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 18/11/2020.
//

import UIKit

protocol Coordinator {
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
