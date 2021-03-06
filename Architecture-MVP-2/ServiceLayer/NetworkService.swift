//
//  NetworkService.swift
//  Architecture-MVP-2
//
//  Created by Ruslan on 09.02.2022.
//

import Foundation

protocol NetworkServiceProtocol {
    func getComments(completion: @escaping (Result<[Comment]?, Error>) -> Void)
}

class NetworkService: NetworkServiceProtocol {
    
    func getComments(completion: @escaping (Result<[Comment]?, Error>) -> Void) {
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/comments")!
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            do {
                let object = try JSONDecoder().decode([Comment].self, from: data!)
                completion(.success(object))
            } catch {
                completion(.failure(error))
            }
        }
        
        dataTask.resume()
    }
}
