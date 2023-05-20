//
//  DetailModelView.swift
//  Coffe
//
//  Created by ABasir on 20.05.2023.
//

import UIKit

class DetailModelView: UIViewController {
    
    private let titleImage = TitleImage()
    
    private let xmark: UIButton = {
        let button = UIButton(configuration: .borderless())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.tintColor = .black
        
        return button
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = R.Colors.labelColor
        label.text = "Классический латте"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        label.textColor = R.Colors.labelColor
        label.text = "300 ₽"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let sizeCellView = CellView()
    private let flavorCellView = CellView()
    private let toppingCellView = CellView()
    
    private let quantityView: QuantityCoffeeView = {
        let view = QuantityCoffeeView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let addBasketButton: UIButton = {
        let button = UIButton(configuration: .borderless())
        button.backgroundColor = R.Colors.activeButton
        button.setTitle("Добавить в корзину".uppercased(), for: .normal)
        button.tintColor = .white
        button.layer.borderColor = R.Colors.bourderColor.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 26
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let createStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 1
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    override func viewDidLoad() {
        sizeCellView.configure(with: "Размер", at: "Большой")
        flavorCellView.configure(with: "Аромат", at: "Карамель")
        toppingCellView.configure(with: "Тема", at: "Протертые сливки")
        
        //add view
        view.addSubview(xmark)
        view.addSubview(titleImage)
        view.addSubview(titleLabel)
        view.addSubview(priceLabel)
        view.addSubview(createStackView)
        view.addSubview(quantityView)
        view.addSubview(addBasketButton)
        
        createStackView.addArrangedSubview(sizeCellView)
        createStackView.addArrangedSubview(flavorCellView)
        createStackView.addArrangedSubview(toppingCellView)
        
        
        //NSLayoutConstraint
        NSLayoutConstraint.activate([
            titleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
            titleImage.widthAnchor.constraint(equalToConstant: 202),
            titleImage.heightAnchor.constraint(equalToConstant: 179),
            
            xmark.topAnchor.constraint(equalTo: titleImage.topAnchor),
            //xmark.leadingAnchor.constraint(equalTo: titleImage.trailingAnchor, constant: 17.16),
            xmark.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            xmark.widthAnchor.constraint(equalToConstant: 12),
            xmark.heightAnchor.constraint(equalToConstant: 12),
            
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 282),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 92),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalToConstant: 191),
            titleLabel.heightAnchor.constraint(equalToConstant: 45),
            
            priceLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160),
            priceLabel.widthAnchor.constraint(equalToConstant: 57),
            priceLabel.heightAnchor.constraint(equalToConstant: 26),
            
            createStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 378),
            createStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            createStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -41),
            createStackView.widthAnchor.constraint(equalToConstant: 290),
            createStackView.heightAnchor.constraint(equalToConstant: 235),
            
            quantityView.topAnchor.constraint(equalTo: createStackView.bottomAnchor, constant: 42),
            quantityView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            quantityView.widthAnchor.constraint(equalToConstant: 167),
            quantityView.heightAnchor.constraint(equalToConstant: 48),
            
            addBasketButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addBasketButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            addBasketButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 48),
            addBasketButton.widthAnchor.constraint(equalToConstant: 278),
            addBasketButton.heightAnchor.constraint(equalToConstant: 53)
        ])
        
        //configure view
        view.backgroundColor = .white
        
    }
}
