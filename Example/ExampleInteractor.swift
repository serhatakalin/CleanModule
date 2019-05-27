//
//  ExampleInteractor.swift
//  
//
//  Created by Serhat Akalin on 27.05.2019.
//

import UIKit

protocol ExampleBusinessLogic
{
    func doSomething(request: Example.Something.Request)
}

protocol ExampleDataStore
{
    //var name: String { get set }
}

class ExampleInteractor: ExampleBusinessLogic, ExampleDataStore
{
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
