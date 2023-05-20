//
//  ViewController.swift
//  Coffe
//
//  Created by Zaur on 20.05.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    var collectionView: UICollectionView!
    
    var presenter: HomePresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setupCollectionView()
    }

    func configure() {
        view.backgroundColor = .white
        title = R.Strings.NavigationTitle.home
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.reuseId)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func createLayout() -> UICollectionViewLayout {
        // section -> group -> items -> size
        let sizeItem = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                              heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: sizeItem)
        let sizeGroup = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.3))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: sizeGroup, subitem: item, count: 2)
        group.interItemSpacing = .fixed(20)
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = 50
        section.contentInsets = NSDirectionalEdgeInsets(top: 50, leading: 10, bottom: 0 , trailing: 10)
        let layout = UICollectionViewCompositionalLayout(section: section )
        return layout
    }
    
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.coffeModel?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.reuseId, for: indexPath) as? HomeCollectionViewCell else { return UICollectionViewCell() }
        //cell.backgroundColor = .systemMint
        cell.configure((presenter.coffeModel?[indexPath.item])!)
        
        return cell
    }
}
