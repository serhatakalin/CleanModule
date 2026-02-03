//
//  ExampleWorker.swift
//
//  Created by Serhat Akalin on 27.05.2019.
//

/// VIP scene: dependency wiring and optional side‑effect work for the Example module.
import UIKit

/// Worker: wires Interactor, Presenter, Router and optionally performs external work.
class ExampleWorker {
    func doSetup(_ viewController: ExampleViewController) {
        let interactor = ExampleInteractor()
        let presenter = ExamplePresenter()
        let router = ExampleRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    func doSomeWork() {
        
    }
}
