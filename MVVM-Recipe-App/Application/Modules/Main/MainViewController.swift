//
//  MainViewController.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 18/11/2020.
//

import UIKit

class MainViewController: UIViewController {
    private var viewModel: MainViewModel?
    
    func configure(with viewModel: MainViewModel) {
        self.viewModel = viewModel
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
