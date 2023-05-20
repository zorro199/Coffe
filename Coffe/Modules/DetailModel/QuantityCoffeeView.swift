//
//  QuantityCoffeeView.swift
//  Coffe
//
//  Created by ABasir on 20.05.2023.
//

import UIKit

class QuantityCoffeeView: BaseView {
    
    private let plusButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 45, height: 45)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = R.Colors.buttonColor
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.layer.cornerRadius = 22
        button.tintColor = .black
        
        return button
    }()
    
    private let minusButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 45, height: 45)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = R.Colors.buttonColor
        button.setImage(UIImage(systemName: "minus"), for: .normal)
        button.layer.cornerRadius = 22
        button.tintColor = .black
        
        return button
    }()
    
    private let textField: UITextField = {
        let text = UITextField()
        text.frame = CGRect(x: 0, y: 0, width: 45, height: 45)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = .black
        text.textAlignment = .center
        text.font = UIFont.systemFont(ofSize: 16)
        text.borderStyle = .roundedRect
        
        return text
    }()
    
}

extension QuantityCoffeeView {
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(minusButton)
        addSubview(textField)
        addSubview(plusButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: centerYAnchor),
            textField.widthAnchor.constraint(equalToConstant: 45),
            textField.heightAnchor.constraint(equalToConstant: 45),
            
            minusButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            minusButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            minusButton.widthAnchor.constraint(equalToConstant: 45),
            minusButton.heightAnchor.constraint(equalToConstant: 45),
            
            plusButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            plusButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 45),
            plusButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}
