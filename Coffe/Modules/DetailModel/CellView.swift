//
//  StackView.swift
//  Coffe
//
//  Created by ABasir on 20.05.2023.
//

import UIKit

class CellView: BaseView {
    
    private let mainTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        label.textColor = R.Colors.labelColor
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let subTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = R.Colors.subTitle
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let image: UIImageView = {
        let image = UIImageView()
        image.image = R.Images.DetailModelView.groupButton
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    func configure (with titleMain: String, at titleSub: String) {
        mainTitle.text = titleMain
        subTitle.text = titleSub
    }
}

extension CellView {
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(mainTitle)
        addSubview(subTitle)
        addSubview(image)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        NSLayoutConstraint.activate([
            mainTitle.topAnchor.constraint(equalTo: topAnchor, constant: 18.67),
            mainTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 42),
            mainTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 219.58),
            mainTitle.widthAnchor.constraint(equalToConstant: 31),
            mainTitle.heightAnchor.constraint(equalToConstant: 22),
            
            subTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 3.72),
            subTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 42),
            subTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 220.58),
            subTitle.widthAnchor.constraint(equalToConstant: 30),
            subTitle.heightAnchor.constraint(equalToConstant: 13),
            
            image.centerYAnchor.constraint(equalTo: centerYAnchor),
            //image.leadingAnchor.constraint(equalTo: mainTitle.trailingAnchor ,constant: 145.31),
            image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            image.widthAnchor.constraint(equalToConstant: 70),
            image.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = R.Colors.blockViewColor
        layer.cornerRadius = 15
    }
}
