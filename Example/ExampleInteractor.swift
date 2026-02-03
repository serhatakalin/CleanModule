//
//  ExampleInteractor.swift
//
//  Created by Serhat Akalin on 27.05.2019.
//

/// VIP scene: business logic and data store for the Example module.
import UIKit

/// Business logic contract for the Example scene.
protocol ExampleBusinessLogic {
    func doSomething(request: Example.Something.Request)
}

/// Data store contract for passing data to other scenes.
protocol ExampleDataStore {
    //var name: String { get set }
}

/// Interactor: handles business logic and drives the VIP cycle for the Example scene.
class ExampleInteractor: ExampleBusinessLogic, ExampleDataStore {
    var presenter: ExamplePresentationLogic?
    var worker: ExampleWorker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: Example.Something.Request) {
        worker = ExampleWorker()
        worker?.doSomeWork()
        
        let response = Example.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
