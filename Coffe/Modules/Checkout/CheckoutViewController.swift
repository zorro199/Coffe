//
//  CheckoutViewController.swift
//  Coffe
//
//  Created by arslanali on 20.05.2023.
//

import UIKit

final class CheckoutViewController: UIViewController {
	
	private lazy var ordersLabel: UILabel = {
		let label = UILabel()
		label.text = "Your Orders"
		label.textColor = R.Colors.blackTitle
		label.font = .boldSystemFont(ofSize: 33)
		return label
	}()
	
	private lazy var collectionView: UICollectionView = {
		let layout = UICollectionViewFlowLayout()
		let width = UIScreen.main.bounds.width
		layout.itemSize = CGSize(width: width - 40,
								 height: 150)
		layout.minimumLineSpacing = 20
		layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
		layout.scrollDirection = .vertical
		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
		collectionView.backgroundColor = .clear
		collectionView.delegate = self
		collectionView.dataSource = self
		return collectionView
	}()

    override func viewDidLoad() {
        super.viewDidLoad()
		setupView()
		
    }
	
	private func setupView() {
		title = R.Strings.NavigationTitle.checkout
		view.backgroundColor = R.Colors.backgroundColorView
		view.addSubview(ordersLabel)
		view.addSubview(collectionView)
		collectionView.register(CheckoutCell.self, forCellWithReuseIdentifier: "cell")
		setupLayout()
	}
	
	private func setupLayout() {
		ordersLabel.snp.makeConstraints {
			$0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
			$0.centerX.equalToSuperview()
		}
		collectionView.snp.makeConstraints {
			$0.top.equalTo(ordersLabel.snp.bottom).offset(20)
			$0.leading.trailing.bottom.equalToSuperview()
		}
	}
	
}

extension CheckoutViewController: UICollectionViewDelegate, UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 10
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CheckoutCell
		cell.layer.cornerRadius = 10
		cell.layer.masksToBounds = true
		return cell
	}
	
}
