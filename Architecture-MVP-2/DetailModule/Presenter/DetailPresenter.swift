//
//  DetailPresenter.swift
//  Architecture-MVP-2
//
//  Created by Ruslan on 10.02.2022.
//

import Foundation

protocol DetailViewProtocol: AnyObject {
    func setComment(_ comment: Comment?)
}

protocol DetailPresenterProtocol: AnyObject {
    init(networkService: NetworkServiceProtocol, view: DetailViewProtocol, model: Comment?)
    func setComment()
}

class DetailPresenter: DetailPresenterProtocol {
    
    let networkService: NetworkServiceProtocol!
    weak var view: DetailViewProtocol?
    var comment: Comment?
    
    required init(networkService: NetworkServiceProtocol, view: DetailViewProtocol, model: Comment?) {
        self.networkService = networkService
        self.view = view
        self.comment = model
    }
    
    func setComment() {
        view?.setComment(comment)
    }
}
