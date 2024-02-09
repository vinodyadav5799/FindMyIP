//
//  Service.swift
//  FindMyIP
//
//  Created by htcuser on 09/02/24.
//

import Foundation
import Combine
import Alamofire

protocol ServiceProtocol {
    func fetchLocationDetails() -> AnyPublisher<DataResponse<LocationTracker, NetworkError>, Never>
}


class Service {
    static let shared: ServiceProtocol = Service()
    private init() { }
}

extension Service: ServiceProtocol {
    func fetchLocationDetails() -> AnyPublisher<DataResponse<LocationTracker, NetworkError>, Never> {
        let url = URL(string: "https://ipapi.co/json/")!
        
        return AF.request(url, method: .get)
            .validate()
            .publishDecodable(type: LocationTracker.self)
            .map { response in
                response.mapError { error in
                    let backendError = response.data.flatMap { try? JSONDecoder().decode(BackendError.self, from: $0)}
                    return NetworkError(initialError: error, backendError: backendError)
                }
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
