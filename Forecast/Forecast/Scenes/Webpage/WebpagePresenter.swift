//
//  WebpagePresenter.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 23/4/22.
//

import Foundation

protocol  WebpageViewControllerViewInput: AnyObject {
}

protocol WebpageInteractorInput: AnyObject {
}

protocol WebpageRouterInput: AnyObject {
}


class WebpagePresenter: WebpageInteractorOutput, WebpageViewControllerViewOutput {
    
    var router: WebpageRouterInput?
    var interactor: WebpageInteractorInput?
    weak var view: WebpageViewControllerViewInput?
    
    
    
}
