//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

@objc protocol ___FILEBASENAME___RoutingLogic
{
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol ___FILEBASENAME___DataPassing
{
    var dataStore: ___FILEBASENAME___DataStore? { get }
}

class ___FILEBASENAME___Router: NSObject, ___FILEBASENAME___RoutingLogic, ___FILEBASENAME___DataPassing
{
    weak var viewController: ___FILEBASENAME___ViewController?
    var dataStore: ___FILEBASENAME___DataStore?
    
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
    
    //func navigateToSomewhere(source: ExampleViewController, destination: SomewhereViewController)
    //{
    //  source.show(destination, sender: nil)
    //}
    
    // MARK: Passing data
    
    //func passDataToSomewhere(source: ExampleDataStore, destination: inout SomewhereDataStore)
    //{
    //  destination.name = source.name
    //}
}
