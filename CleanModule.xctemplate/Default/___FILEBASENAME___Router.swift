//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

@objc protocol ___VARIABLE_productName:identifier___RoutingLogic
{
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol ___VARIABLE_productName:identifier___DataPassing
{
    var dataStore: ___VARIABLE_productName:identifier___DataStore? { get }
}

class ___VARIABLE_productName:identifier___Router: NSObject, ___VARIABLE_productName:identifier___RoutingLogic, ___VARIABLE_productName:identifier___DataPassing
{
    weak var viewController: ___VARIABLE_productName:identifier___ViewController?
    var dataStore: ___VARIABLE_productName:identifier___DataStore?
    
    // MARK: Routing
    
    //func routeToSomewhere(segue: UIStoryboardSegue?)
    //{
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    //}
    
    // MARK: Navigation
    
    //func navigateToSomewhere(source: ___VARIABLE_productName:identifier___ViewController, destination: SomewhereViewController)
    //{
    //  source.show(destination, sender: nil)
    //}
    
    // MARK: Passing data
    
    //func passDataToSomewhere(source: ___VARIABLE_productName:identifier___DataStore, destination: SomewhereDataStore)
    //{
    //  destination.name = source.name
    //}
}
