//
//  WeatherAssembly.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 24/4/22.
//

import Foundation
import PilgrimDI

class WeatherAssembly: PilgrimAssembly {
    
    func weatherModule() -> WeatherViewController {
        objectGraph(WeatherViewController()) { [self] (controller: WeatherViewController) in
            controller.presenter = presenter()
        }
    }
    
    private func presenter() -> WeatherPresenter {
        objectGraph(WeatherPresenter()) { [self] (presenter: WeatherPresenter) in
            presenter.view = weatherModule()
            presenter.interactor = interactor()
            presenter.router = router()
        }
    }
    
    private func interactor() -> WeatherInteractor {
        objectGraph(WeatherInteractor()) { [self] (interactor: WeatherInteractor) in
            interactor.output = presenter()
        }
    }
    
    private func router() -> WeatherRouter {
        objectGraph(WeatherRouter()) { [self] (router: WeatherRouter) in
            router.view = weatherModule()
        }
    }
}
