//
//  ExampleViewController.swift
//  
//
//  Created by Serhat Akalin on 27.05.2019.
//

import UIKit

protocol ExampleDisplayLogic: class
{
    func displaySomething(viewModel: Example.Something.ViewModel)
}

class ExampleViewController: UIViewController, ExampleDisplayLogic
{
    var interactor: ExampleBusinessLogic?
    var router: (NSObjectProtocol & ExampleRoutingLogic & ExampleDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        ExampleWorker().doSetup(self)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        ExampleWorker().doSetup(self)
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
    }
    
    // MARK: Do something
    
    func doSomething() {
        let request = Example.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func displaySomething(viewModel: Example.Something.ViewModel) {
    }
}

