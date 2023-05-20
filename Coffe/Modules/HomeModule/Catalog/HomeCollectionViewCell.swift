//
//  HomeCollectionViewCell.swift
//  Coffe
//
//  Created by Zaur on 20.05.2023.
//

import UIKit
import SnapKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    static var reuseId: String = "CoffeCell"
    
    private let baseView: UIView = {
        let view = UIView()
        return view
    }()
    
    private let coffeView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 16
        view.backgroundColor = .gray
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
        view.backgroundColor = R.Colors.background
        return view
    }()
    
    private let coffeeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.orange.cgColor
        return imageView
    }()
    
    private let coffeeNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    private let coffeePriceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureApparance()
        addViews()
    }
    
    private func configureApparance() {
        self.layer.cornerRadius = 16
        self.clipsToBounds = true
    }
    
    private func addViews() {
        addSubview(baseView)
        baseView.addSubviews([coffeView, coffeeImageView, coffeeNameLabel, coffeePriceLabel])
        setupLayout()
    }
    
    private func setupLayout() {
        baseView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        coffeView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(20)
            $0.leading.trailing.bottom.equalToSuperview()
        }
        coffeeImageView.snp.makeConstraints {
            $0.top.equalTo(coffeView.snp.top).offset(-20)
            $0.leading.equalTo(coffeView.snp.leading).offset(10)
            $0.trailing.equalTo(coffeView.snp.trailing).offset(-10)
            $0.height.equalTo(140)
        }
        coffeeNameLabel.snp.makeConstraints {
            $0.top.equalTo(coffeeImageView.snp.bottom).offset(10)
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalTo(coffeePriceLabel.snp.leading).offset(-10)
            $0.height.equalTo(30)
        }
        coffeePriceLabel.snp.makeConstraints {
            $0.top.equalTo(coffeeImageView.snp.bottom).offset(10)
            $0.trailing.equalToSuperview().offset(-10)
            $0.leading.equalTo(coffeeNameLabel.snp.trailing)
            $0.height.width.equalTo(30)
        }
    }
    
    func configure(_ model: HomeModel) {
        guard let image = model.imageName else { return }
        coffeeImageView.image = UIImage(named: image)
        coffeeNameLabel.text = model.coffeName
        coffeePriceLabel.text = model.price
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
