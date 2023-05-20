//
//  HomePresenter.swift
//  Coffe
//
//  Created by Zaur on 20.05.2023.
//

import Foundation
import UIKit

protocol HomePresenterProtocol: AnyObject {
    init(view: HomeViewController)
    var coffeModel: [HomeModel]? { get set }
}

class HomePresenter: HomePresenterProtocol {
    
    var view = HomeViewController()
    var coffeModel: [HomeModel]? = {
        var model = HomeModel(imageName: "coffee", coffeName: "Capuchino", price: "3$")
        var model2 = HomeModel(imageName: "coffee", coffeName: "Capuchino", price: "3$")
        var model3 = HomeModel(imageName: "coffee", coffeName: "Capuchino", price: "3$")
        var model4 = HomeModel(imageName: "coffee", coffeName: "Capuchino", price: "3$")
        return [model, model2, model3, model4]
    }()
    
    required init(view: HomeViewController) {
        self.view = view
    }
    
}
