//
//  HomeBuilder.swift
//  Coffe
//
//  Created by Zaur on 20.05.2023.
//

import Foundation
import UIKit

protocol Builder {
    static func createHomeModule() -> UIViewController
}

class HomeBuilder: Builder {
    static func createHomeModule() -> UIViewController {
        let view = HomeViewController()
        let presenter = HomePresenter(view: view)
        view.presenter = presenter
        return view
    }
}
