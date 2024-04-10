//
//  HomeViewModel.swift
//  CodeRefinery
//
//  Created by Kunal More on 10/04/24.
//

import Foundation

final class HomeViewModel {
    
    private let service: NetworkingService
    var resultData: String?
    
    init(service: NetworkingService = NetworkManager()) {
        self.service = service
    }
    
    func fetchFromAPI() {
        service.getDataFromAPI { [weak self] result in
            
            switch result {
            case .success(let value):
                self?.resultData = value
            case .failure(let error):
                debugPrint(error)
            }
        }
    }
}
