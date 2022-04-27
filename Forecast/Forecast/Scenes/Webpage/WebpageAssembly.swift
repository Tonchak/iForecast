//
//  WebpageAssembly.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 23/4/22.
//

import Foundation
import PilgrimDI


class WebpageAssembly: PilgrimAssembly {

    func viewModule() -> WebpageViewController {
        objectGraph(WebpageViewController()) { [self] (controller: WebpageViewController) in
            controller.presenter = presenter()
        }
    }
    
    private func presenter() -> WebpagePresenter {
        objectGraph(WebpagePresenter()) { [self] (presenter: WebpagePresenter) in
            presenter.view = viewModule()
            presenter.interactor = interactor()
            presenter.router = router()
        }
    }
    
    private func interactor() -> WebpageInteractor {
        objectGraph(WebpageInteractor()) { [self] (interactor: WebpageInteractor) in
            interactor.output = presenter()
        }
    }
    
    private func router() -> WebpageRouter {
        objectGraph(WebpageRouter()) { [self] (router: WebpageRouter) in
            router.view = viewModule()
        }
    }
}
