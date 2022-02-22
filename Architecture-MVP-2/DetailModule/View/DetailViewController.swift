//
//  DetailViewController.swift
//  Architecture-MVP-2
//
//  Created by Ruslan on 10.02.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var commentLabel: UILabel!
    
    var presenter: DetailPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.setComment()
        commentLabel.numberOfLines = 0
    }
}

extension DetailViewController: DetailViewProtocol {
    
    func setComment(_ comment: Comment?) {
        commentLabel.text = comment?.body
    }
}
