//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

/// VIP scene: business logic and data store for this module.
import UIKit

/// Business logic contract for this scene.
protocol ___VARIABLE_productName:identifier___BusinessLogic {
    func doSomething(request: ___VARIABLE_productName:identifier___.Something.Request)
}

/// Data store contract for passing data to other scenes.
protocol ___VARIABLE_productName:identifier___DataStore {
    //var name: String { get set }
}

/// Interactor: handles business logic and drives the VIP cycle for this scene.
class ___VARIABLE_productName:identifier___Interactor: ___VARIABLE_productName:identifier___BusinessLogic, ___VARIABLE_productName:identifier___DataStore {
    var presenter: ___VARIABLE_productName:identifier___PresentationLogic?
    var worker: ___VARIABLE_productName:identifier___Worker?
    //var name: String = ""

    // MARK: Do something
    
    func doSomething(request: ___VARIABLE_productName:identifier___.Something.Request) {
        worker = ___VARIABLE_productName:identifier___Worker()
        worker?.doSomeWork()
        
        let response = ___VARIABLE_productName:identifier___.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
