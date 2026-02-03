//
//  ExamplePresenter.swift
//
//  Created by Serhat Akalin on 27.05.2019.
//

/// VIP scene: formats Interactor output into view models for the Example module.
import UIKit

/// Presentation logic contract for the Example scene.
protocol ExamplePresentationLogic {
    func presentSomething(response: Example.Something.Response)
}

/// Presenter: formats responses into view models and notifies the ViewController.
class ExamplePresenter: ExamplePresentationLogic {
    weak var viewController: ExampleDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: Example.Something.Response) {
        let viewModel = Example.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
