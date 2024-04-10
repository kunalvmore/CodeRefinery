//
//  NetworkManager.swift
//  CodeRefinery
//
//  Created by Kunal More on 10/04/24.
//

import Foundation

protocol NetworkingService {
    func getDataFromAPI(completion: @escaping (Result<String, Error>) -> Void)
}

final class NetworkManager: NetworkingService{
    
    func getDataFromAPI(completion: @escaping (Result<String, Error>) -> Void) {
        /**
                    Networking Code goes here
         */
    }
}
