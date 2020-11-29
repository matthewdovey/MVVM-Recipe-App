//
//  FilterView.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 27/11/2020.
//

import UIKit

class FilterView: UIView {
    private var filterStackView: UIStackView!
    	
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupFilterStack()
    }
    
    private func setupFilterStack() {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .trailing
        filterStackView = stackView
        
        addSubview(filterStackView)
        filterStackView.translatesAutoresizingMaskIntoConstraints = false
        filterStackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        filterStackView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        filterStackView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        filterStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
