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
        
        let model = Comment(postId: 1, id: 1, name: "1", email: "2", body: "3")
        let view = MainViewController()
        let presenter = MainPresenter(model: model, view: view)
        
        view.presenter = presenter
        
        return view
    }
}
