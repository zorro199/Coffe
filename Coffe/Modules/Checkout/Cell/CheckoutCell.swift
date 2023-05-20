//
//  CheckoutCell.swift
//  Coffe
//
//  Created by arslanali on 20.05.2023.
//

import UIKit

final class CheckoutCell: UICollectionViewCell {

	private lazy var imageItem: UIImageView = {
		let image = UIImage(named: "coffe")
		let imageView = UIImageView(image: image)
		return imageView
	}()
	
	private lazy var backgroundViewImage: UIView = {
		let view = UIView()
		view.layer.cornerRadius = 15
		view.backgroundColor = R.Colors.backgroundViewImage
		view.layer.borderColor = R.Colors.borderImageColor.cgColor
		view.layer.borderWidth = 1
		view.layer.shadowColor = UIColor.black.cgColor
		view.layer.shadowOffset = CGSize(width: 0, height: 4)
		view.layer.shadowOpacity = 0.2
		view.layer.shadowRadius = 10
		view.layer.masksToBounds = false
		return view
	}()
	
	private lazy var titleLabel: UILabel = {
		let label = UILabel()
		label.text = "Капучино"
		return label
	}()
	
	private lazy var priceLabel: UILabel = {
		let label = UILabel()
		label.text = "200"
		return label
	}()
	
	private var sizeLabel = CheckoutStackView(titleText: "Объем", descriprionText: "200")
	private var flavorLabel = CheckoutStackView(titleText: "Сироп", descriprionText: "Карамеь")
	private lazy var topingLabel = CheckoutStackView(titleText: "Топпинг", descriprionText: "Шоколад")
	
	
	private lazy var ingredientsStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .vertical
		stackView.distribution = .fillEqually
		stackView.spacing = 10
		stackView.alignment = .fill
		return stackView
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupViews()
		backgroundColor = .white
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setupViews() {
		[imageItem, ingredientsStackView, titleLabel, priceLabel].forEach { contentView.addSubview($0) }
		ingredientsStackView.addArrangedSubview(sizeLabel)
		ingredientsStackView.addArrangedSubview(flavorLabel)
		ingredientsStackView.addArrangedSubview(topingLabel)
		
		setupLayout()
	}
	
	private func setupLayout() {
		imageItem.snp.makeConstraints {
			$0.width.equalTo(120)
			$0.height.equalTo(80)
			$0.top.equalToSuperview().offset(10)
			$0.leading.equalToSuperview()
		}
		
		titleLabel.snp.makeConstraints {
			$0.leading.equalTo(imageItem.snp.trailing).offset(18)
			$0.top.equalToSuperview().offset(16)
		}
		
		ingredientsStackView.snp.makeConstraints {
			$0.leading.equalTo(imageItem.snp.trailing).offset(10)
			$0.top.equalTo(titleLabel.snp.bottom).offset(10)
			$0.trailing.equalToSuperview().offset(-10)
			$0.bottom.equalToSuperview()
		}

		priceLabel.snp.makeConstraints {
			$0.top.equalTo(imageItem.snp.bottom).offset(18)
			$0.leading.equalToSuperview().offset(16)
		}

	}
	
}
