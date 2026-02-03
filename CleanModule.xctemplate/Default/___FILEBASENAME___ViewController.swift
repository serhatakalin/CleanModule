//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

/// VIP scene: view and user input for this module.
import UIKit

/// Display logic contract: ViewController displays view models from the Presenter.
protocol ___VARIABLE_productName:identifier___DisplayLogic: AnyObject {
    func displaySomething(viewModel: ___VARIABLE_productName:identifier___.Something.ViewModel)
}

/// ViewController: receives user actions, calls Interactor, and displays view models from Presenter.
class ___VARIABLE_productName:identifier___ViewController: UIViewController, ___VARIABLE_productName:identifier___DisplayLogic {
    var interactor: ___VARIABLE_productName:identifier___BusinessLogic?
    var router: (NSObjectProtocol & ___VARIABLE_productName:identifier___RoutingLogic & ___VARIABLE_productName:identifier___DataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        ___VARIABLE_productName:identifier___Worker().doSetup(self)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        ___VARIABLE_productName:identifier___Worker().doSetup(self)
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
        let request = ___VARIABLE_productName:identifier___.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func displaySomething(viewModel: ___VARIABLE_productName:identifier___.Something.ViewModel) {
    }
}

