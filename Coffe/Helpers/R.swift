//
//  R.swift
//  Coffe
//
//  Created by Zaur on 20.05.2023.
//

import UIKit


enum R {
	
    enum Colors {
        static let active = UIColor(hexString: "#EB7A27")
        static let inactive = UIColor(hexString: "#828EB4")
        static let labelColor = UIColor(hexString: "#353E5A")
        static let subTitle = UIColor(hexString: "#ACB5D3")
        static let blockViewColor = UIColor(hexString: "#F7F8FC")
        static let buttonColor = UIColor(hexString: "#EDF0FB")
        static let bourderColor = UIColor(hexString: "#FFA96A")
        static let activeButton = UIColor(hexString: "#D9D9D9")
        
		static let blackTitle = UIColor(hexString: "#353E5A")
		static let backgroundViewImage = UIColor(hexString: "#D9D9D9")
		static let backgroundColorView = UIColor(hexString: "#F7F8FC")
		static let collectionViewCellColor = UIColor(hexString: "#EFF1FA")
		static let borderImageColor = UIColor(hexString: "#FFA96A")

        static let background = UIColor(hexString: "#D9D9D9")

    }
	
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .home:
                    return "Home"
                case .addOrder:
                    return "Add order"
				case .checkout:
					return "Checkout"
				}
            }
        }
        enum NavigationTitle {
            static let home = "Home"
            static let addOrder = "Add order"
			static let checkout = "Checkout"
        }
    }
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .home:
                    return UIImage(named: "home") ?? UIImage()
                case .addOrder:
                    return UIImage(named: "plus") ?? UIImage()
				case .checkout:
					return UIImage(named: "Cart") ?? UIImage()
				}
            }
        }
        
        enum DetailModelView {
            static let groupButton = UIImage(named: "Group1213")
            static let coffeeImage = UIImage(named: "Coffee_Image")
        }
    }
}
