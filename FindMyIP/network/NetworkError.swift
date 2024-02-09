//
//  NetworkError.swift
//  FindMyIP
//
//  Created by htcuser on 09/02/24.
//

import Foundation
import Alamofire

struct NetworkError: Error {
  let initialError: AFError
  let backendError: BackendError?
}

struct BackendError: Codable, Error {
    var status: String
    var message: String
}
