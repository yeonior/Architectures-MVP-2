//
//  MainPresenter.swift
//  MVP-Storyboard-2
//
//  Created by Ruslan on 09.02.2022.
//

import Foundation

protocol MainViewProtocol: AnyObject {
    func set(_ text: String)
}

protocol MainPresenterProtocol: AnyObject {
    init(model: Comment, view: MainViewProtocol)
    func show()
}

class MainPresenter: MainPresenterProtocol {
    
    var model: Comment!
    var view: MainViewProtocol!
    
    required init(model: Comment, view: MainViewProtocol) {
        self.model = model
        self.view = view
    }
    
    func show() {
        print(#function)
    }
}
