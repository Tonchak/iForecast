//
//  WebpageInteractor.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 23/4/22.
//

import Foundation

protocol WebpageInteractorOutput: AnyObject {
    
}

class WebpageInteractor: WebpageInteractorInput {
    
    weak var output: WebpageInteractorOutput?
    
    
}
