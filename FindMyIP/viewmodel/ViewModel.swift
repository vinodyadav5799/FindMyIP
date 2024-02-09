//
//  ViewModel.swift
//  FindMyIP
//
//  Created by htcuser on 09/02/24.
//

import Foundation
import Combine
class ViewModel: ObservableObject {
    
    //@Published var locationTracker = LocationTracker(). //[ChatModel]()
    
    @Published  var ip                 : String = ""
    @Published  var network            : String = ""
    @Published  var version            : String = ""
    @Published  var city               : String = ""
    @Published  var region             : String = ""
    @Published  var regionCode         : String = ""
    @Published  var country            : String = ""
    @Published  var countryName        : String = ""
    @Published  var countryCode        : String = ""
    @Published  var countryCodeIso3    : String = ""
    @Published  var countryCapital     : String = ""
    @Published  var countryTld         : String = ""
    @Published  var continentCode      : String = ""
    @Published  var inEu               : Bool   = false
    @Published  var postal             : String = ""
    @Published  var latitude           : Double = 0
    @Published  var longitude          : Double = 0
    @Published  var timezone           : String = ""
    @Published  var utcOffset          : String = ""
    @Published  var countryCallingCode : String = ""
    @Published  var currency           : String = ""
    @Published  var currencyName       : String = ""
    @Published  var languages          : String = ""
    @Published  var countryArea        : Int    = 0
    @Published  var countryPopulation  : Int    = 0
    @Published  var asn                : String = ""
    @Published  var org                : String = ""
    
    
    @Published var chatListLoadingError: String = ""
    @Published var showAlert: Bool = false

    private var cancellableSet: Set<AnyCancellable> = []
    var dataManager: ServiceProtocol
    
    init( dataManager: ServiceProtocol = Service.shared) {
        self.dataManager = dataManager
        getChatList()
    }
    
    func getChatList() {
        dataManager.fetchChats()
            .sink { (dataResponse) in
                if dataResponse.error != nil {
                    self.createAlert(with: dataResponse.error!)
                } else {
                    self.ip = dataResponse.value!.ip
                    self.network = dataResponse.value!.network
                    self.version = dataResponse.value!.version
                    self.city = dataResponse.value!.city
                    self.region = dataResponse.value!.region
                    self.regionCode = dataResponse.value!.regionCode
                    self.country = dataResponse.value!.country
                    self.countryName = dataResponse.value!.countryName
                    self.countryCode = dataResponse.value!.countryCode
                    self.countryCodeIso3 = dataResponse.value!.countryCodeIso3
                    self.countryCapital = dataResponse.value!.countryCapital
                    self.countryTld = dataResponse.value!.countryTld
                    self.continentCode = dataResponse.value!.continentCode
                    self.inEu = dataResponse.value!.inEu
                    self.postal = dataResponse.value!.postal
                    self.latitude = dataResponse.value!.latitude
                    self.longitude = dataResponse.value!.longitude
                    self.timezone = dataResponse.value!.timezone
                    self.utcOffset = dataResponse.value!.utcOffset
                    self.countryCallingCode = dataResponse.value!.countryCallingCode
                    self.currency = dataResponse.value!.currency
                    self.currencyName = dataResponse.value!.currencyName
                    self.languages = dataResponse.value!.languages
                    self.countryArea = dataResponse.value!.countryArea
                    self.countryPopulation = dataResponse.value!.countryPopulation
                    self.asn = dataResponse.value!.asn
                    self.org = dataResponse.value!.org
                }
            }.store(in: &cancellableSet)
    }
    
    func createAlert( with error: NetworkError ) {
        chatListLoadingError = error.backendError == nil ? error.initialError.localizedDescription : error.backendError!.message
        self.showAlert = true
    }
}
