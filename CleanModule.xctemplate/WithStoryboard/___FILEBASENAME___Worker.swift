//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

/// VIP scene: dependency wiring and optional side‑effect work for this module.
import UIKit

/// Worker: wires Interactor, Presenter, Router and optionally performs external work.
class ___VARIABLE_productName:identifier___Worker {
    func doSetup(_ viewController: ___VARIABLE_productName:identifier___ViewController) {
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let presenter = ___VARIABLE_productName:identifier___Presenter()
        let router = ___VARIABLE_productName:identifier___Router()
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
