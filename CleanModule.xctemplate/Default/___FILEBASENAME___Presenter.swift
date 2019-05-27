//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_productName:identifier___PresentationLogic
{
    func presentSomething(response: ___VARIABLE_productName:identifier___.Something.Response)
}

class ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresentationLogic
{
    weak var viewController: ___VARIABLE_productName:identifier___DisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: ___VARIABLE_productName:identifier___.Something.Response) {
        let viewModel = ___VARIABLE_productName:identifier___.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
