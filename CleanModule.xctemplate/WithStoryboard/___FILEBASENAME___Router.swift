//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

/// VIP scene: navigation and data passing for this module.
import UIKit

/// Routing logic contract (Objective-C compatible for storyboard segues).
@objc protocol ___VARIABLE_productName:identifier___RoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

/// Data passing contract for the next scene’s data store.
protocol ___VARIABLE_productName:identifier___DataPassing {
    var dataStore: ___VARIABLE_productName:identifier___DataStore? { get }
}

/// Router: handles navigation and passes data to the next scene.
class ___VARIABLE_productName:identifier___Router: NSObject, ___VARIABLE_productName:identifier___RoutingLogic, ___VARIABLE_productName:identifier___DataPassing {
    weak var viewController: ___VARIABLE_productName:identifier___ViewController?
    var dataStore: ___VARIABLE_productName:identifier___DataStore?
    
    // MARK: Routing
    // Add routeToSomewhere(segue:), navigateToSomewhere(source:destination:), passDataToSomewhere(source:destination:). See README.
}
