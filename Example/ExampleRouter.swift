//
//  ExampleRouter.swift
//
//  Created by Serhat Akalin on 27.05.2019.
//

/// VIP scene: navigation and data passing for the Example module.
import UIKit

/// Routing logic contract (Objective-C compatible for storyboard segues).
@objc protocol ExampleRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

/// Data passing contract for the next scene’s data store.
protocol ExampleDataPassing {
    var dataStore: ExampleDataStore? { get }
}

/// Router: handles navigation and passes data to the next scene.
class ExampleRouter: NSObject, ExampleRoutingLogic, ExampleDataPassing {
    weak var viewController: ExampleViewController?
    var dataStore: ExampleDataStore?
    
    // MARK: Routing
    // Add routeToSomewhere(segue:), navigateToSomewhere(source:destination:), passDataToSomewhere(source:destination:). See README.
}
