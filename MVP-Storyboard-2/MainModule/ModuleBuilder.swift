//
//  ModuleBuilder.swift
//  MVP-Storyboard-2
//
//  Created by Ruslan on 09.02.2022.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModuleBuilder: Builder {
    
    static func createMainModule() -> UIViewController {
        
        let networkService = NetworkService()
        let view = MainViewController()
        let presenter = MainPresenter(networkService: networkService, view: view)
        
        view.presenter = presenter
        
        return view
    }
}
