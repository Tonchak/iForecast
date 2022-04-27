//
//  WebpageViewController.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 23/4/22.
//

import UIKit

protocol WebpageViewControllerViewOutput: AnyObject {
    
}

class WebpageViewController: UIViewController, WebpageViewControllerViewInput {

    var presenter: WebpageViewControllerViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemTeal
    }
    
}
