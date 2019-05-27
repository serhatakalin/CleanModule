//
//  ExampleWorker.swift
//  
//
//  Created by Serhat Akalin on 27.05.2019.
//

import UIKit

class ExampleWorker
{
    func doSetup(_ viewController : ExampleViewController) {
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
