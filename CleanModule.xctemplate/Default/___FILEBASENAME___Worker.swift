//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___FILEBASENAME___Worker
{
    func doSetup(_ viewController : ___FILEBASENAME___ViewController) {
        let interactor = ___FILEBASENAME___Interactor()
        let presenter = ___FILEBASENAME___Presenter()
        let router = ___FILEBASENAME___Router()
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
