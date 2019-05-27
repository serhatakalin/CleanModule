//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAME___BusinessLogic
{
    func doSomething(request: ___FILEBASENAME___.Something.Request)
}

protocol ___FILEBASENAME___DataStore
{
    //var name: String { get set }
}

class ___FILEBASENAME___Interactor: ___FILEBASENAME___BusinessLogic, ___FILEBASENAME___DataStore
{
    var presenter: ___FILEBASENAME___PresentationLogic?
    var worker: ___FILEBASENAME___Worker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: ___FILEBASENAME___.Something.Request) {
        worker = ___FILEBASENAME___Worker()
        worker?.doSomeWork()
        
        let response = ___FILEBASENAME___.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
