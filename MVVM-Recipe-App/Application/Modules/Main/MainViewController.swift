//
//  MainViewController.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 18/11/2020.
//

import UIKit

class MainViewController: UIViewController {
    private var titleLabel: UILabel!
    private var filterView: FilterView!
    private var recipeTableView: UITableView!
    
    private var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    func configure(with newViewModel: MainViewModel) {
        self.viewModel = newViewModel
        configureUI(viewModel: newViewModel)
    }
    
    private func configureUI(viewModel: MainViewModel) {
        if isViewLoaded {
            recipeTableView.reloadData()
            titleLabel.text = viewModel.titleLabelText
        }
    }
}

extension MainViewController {
    private func setup() {
        setupTitleView()
        setupFilterView()
        setupRecipeTableView()
    }
    
    private func setupTitleView() {
        let label = UILabel()
        label.textColor = .black
        self.titleLabel = label
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    private func setupFilterView() {
        let filterView = FilterView()
        self.filterView = filterView
        view.addSubview(filterView)
        filterView.translatesAutoresizingMaskIntoConstraints = false
        filterView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24).isActive = true
        filterView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        filterView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    private func setupRecipeTableView() {
        let tableView = UITableView()
        self.recipeTableView = tableView
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: filterView.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        recipeTableView.delegate = self
        recipeTableView.dataSource = self
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}
