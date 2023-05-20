//
//  TitleImage.swift
//  Coffe
//
//  Created by ABasir on 20.05.2023.
//

import UIKit

class TitleImage: BaseView {
    
    private let image: UIImageView = {
        let image = UIImageView()
        image.image = R.Images.DetailModelView.coffeeImage
        image.backgroundColor = R.Colors.activeButton
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
}

extension TitleImage {
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(image)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = R.Colors.activeButton
        layer.borderColor = R.Colors.bourderColor.cgColor
        layer.borderWidth = 2
        layer.cornerRadius = 15
        translatesAutoresizingMaskIntoConstraints = false
    }
}
