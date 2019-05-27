//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAME___PresentationLogic
{
    func presentSomething(response: ___FILEBASENAME___.Something.Response)
}

class ___FILEBASENAME___Presenter: ___FILEBASENAME___PresentationLogic
{
    weak var viewController: ___FILEBASENAME___DisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: ___FILEBASENAME___.Something.Response) {
        let viewModel = ___FILEBASENAME___.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
