//
//  CheckoutStackView.swift
//  Coffe
//
//  Created by arslanali on 20.05.2023.
//

import UIKit

class CheckoutStackView: UIView {
	
	private lazy var titleLabel: UILabel = {
		let label = UILabel()
		return label
	}()
	
	private lazy var descriprionLabel: UILabel = {
		let label = UILabel()
		return label
	}()
	
	
	init(titleText: String, descriprionText: String){
		super.init(frame: .zero)
		self.titleLabel.text = titleText
		self.descriprionLabel.text = descriprionText
		setupViews()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func setupViews() {
		addSubview(titleLabel)
		addSubview(descriprionLabel)
		titleLabel.snp.makeConstraints {
			$0.leading.equalToSuperview()
			$0.top.equalToSuperview()
		}
		
		descriprionLabel.snp.makeConstraints {
			$0.trailing.equalToSuperview()
			$0.top.equalToSuperview()
		}
	}
}
