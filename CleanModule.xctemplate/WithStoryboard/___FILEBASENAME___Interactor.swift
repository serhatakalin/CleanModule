//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_productName:identifier___BusinessLogic
{
    func doSomething(request: ___VARIABLE_productName:identifier___.Something.Request)
}

protocol ___VARIABLE_productName:identifier___DataStore
{
    //var name: String { get set }
}

class ___VARIABLE_productName:identifier___Interactor: ___VARIABLE_productName:identifier___BusinessLogic, ___VARIABLE_productName:identifier___DataStore
{
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
