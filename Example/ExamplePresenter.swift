//
//  ExamplePresenter.swift
//  
//
//  Created by Serhat Akalin on 27.05.2019.
//

import UIKit

protocol ExamplePresentationLogic
{
    func presentSomething(response: Example.Something.Response)
}

class ExamplePresenter: ExamplePresentationLogic
{
    weak var viewController: ExampleDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: Example.Something.Response) {
        let viewModel = Example.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
