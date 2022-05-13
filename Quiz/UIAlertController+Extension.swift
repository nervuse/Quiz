//
//  UIAlertController+Extension.swift
//  Quiz
//
//  Created by elena on 12.05.2022.
//

import UIKit

extension UIAlertController {

    convenience init(style: UIAlertController.Style, title: String? = nil, message: String? = nil) {
        self.init(title: title, message: message, preferredStyle: style)
    }

    func addAlertAction(title: String, style: UIAlertAction.Style = .default, handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        addAction(action)
    }

    func setViewController(image: UIImage, title: String, message: String) {
     
        let alertViewController = AlertViewController()

        let viewController = alertViewController
        viewController.alertImage = image
        viewController.titleText = title
        viewController.messageText = message
        setValue(viewController, forKey: "contentViewController")
    }

}
