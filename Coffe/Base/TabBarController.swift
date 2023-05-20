//
//  TabBar.swift
//  Coffe
//
//  Created by Zaur on 20.05.2023.
//

import Foundation
import UIKit

enum Tabs: Int, CaseIterable {
    case home
    case addOrder
	case checkout
}

final class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // You can to call a viewDidLoad
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func switchTo(tab: Tabs) {
        selectedIndex = tab.rawValue
    }

    private func configure() {
        tabBar.tintColor = R.Colors.active
        tabBar.barTintColor = R.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.masksToBounds = true
        //set NavigationControllers
        let controllers: [NavBarController] = Tabs.allCases.map { tab in
            let controller = NavBarController(rootViewController: getController(for: tab))
            controller.tabBarItem = UITabBarItem(title: R.Strings.TabBar.title(for: tab),
                                                 image: R.Images.TabBar.icon(for: tab),
                                                 tag: tab.rawValue)
            return controller
        }
        setViewControllers(controllers, animated: false)
    }

    private func getController(for tab: Tabs) -> UIViewController {
        switch tab {
        case .home:
            return HomeViewController()
        case .addOrder:
            return PlusViewController()
		case .checkout:
			return CheckoutViewController()
		}
    }
}
