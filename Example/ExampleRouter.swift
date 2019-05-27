//
//  ExampleRouter.swift
//  
//
//  Created by Serhat Akalin on 27.05.2019.
//

import UIKit

@objc protocol ExampleRoutingLogic
{
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol ExampleDataPassing
{
    var dataStore: ExampleDataStore? { get }
}

class ExampleRouter: NSObject, ExampleRoutingLogic, ExampleDataPassing
{
    weak var viewController: ExampleViewController?
    var dataStore: ExampleDataStore?
    
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
