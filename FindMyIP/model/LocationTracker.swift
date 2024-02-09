//
//  LocationTracker.swift
//  FindMyIP
//
//  Created by htcuser on 09/02/24.
//

import Foundation

struct LocationTracker: Codable {   // LocationTracker

    var ip                 : String
    var network            : String
    var version            : String
    var city               : String
    var region             : String
    var regionCode         : String
    var country            : String
    var countryName        : String
    var countryCode        : String
    var countryCodeIso3    : String
    var countryCapital     : String
    var countryTld         : String
    var continentCode      : String
    var inEu               : Bool
    var postal             : String
    var latitude           : Double
    var longitude          : Double
    var timezone           : String
    var utcOffset          : String
    var countryCallingCode : String
    var currency           : String
    var currencyName       : String
    var languages          : String
    var countryArea        : Int
    var countryPopulation  : Int
    var asn                : String
    var org                : String

  enum CodingKeys: String, CodingKey {

    case ip                 = "ip"
    case network            = "network"
    case version            = "version"
    case city               = "city"
    case region             = "region"
    case regionCode         = "region_code"
    case country            = "country"
    case countryName        = "country_name"
    case countryCode        = "country_code"
    case countryCodeIso3    = "country_code_iso3"
    case countryCapital     = "country_capital"
    case countryTld         = "country_tld"
    case continentCode      = "continent_code"
    case inEu               = "in_eu"
    case postal             = "postal"
    case latitude           = "latitude"
    case longitude          = "longitude"
    case timezone           = "timezone"
    case utcOffset          = "utc_offset"
    case countryCallingCode = "country_calling_code"
    case currency           = "currency"
    case currencyName       = "currency_name"
    case languages          = "languages"
    case countryArea        = "country_area"
    case countryPopulation  = "country_population"
    case asn                = "asn"
    case org                = "org"
  
  }

  /*
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    ip                 = try values.decodeIfPresent(String.self , forKey: .ip                 )
    network            = try values.decodeIfPresent(String.self , forKey: .network            )
    version            = try values.decodeIfPresent(String.self , forKey: .version            )
    city               = try values.decodeIfPresent(String.self , forKey: .city               )
    region             = try values.decodeIfPresent(String.self , forKey: .region             )
    regionCode         = try values.decodeIfPresent(String.self , forKey: .regionCode         )
    country            = try values.decodeIfPresent(String.self , forKey: .country            )
    countryName        = try values.decodeIfPresent(String.self , forKey: .countryName        )
    countryCode        = try values.decodeIfPresent(String.self , forKey: .countryCode        )
    countryCodeIso3    = try values.decodeIfPresent(String.self , forKey: .countryCodeIso3    )
    countryCapital     = try values.decodeIfPresent(String.self , forKey: .countryCapital     )
    countryTld         = try values.decodeIfPresent(String.self , forKey: .countryTld         )
    continentCode      = try values.decodeIfPresent(String.self , forKey: .continentCode      )
    inEu               = try values.decodeIfPresent(Bool.self   , forKey: .inEu               )
    postal             = try values.decodeIfPresent(String.self , forKey: .postal             )
    latitude           = try values.decodeIfPresent(Double.self , forKey: .latitude           )
    longitude          = try values.decodeIfPresent(Double.self , forKey: .longitude          )
    timezone           = try values.decodeIfPresent(String.self , forKey: .timezone           )
    utcOffset          = try values.decodeIfPresent(String.self , forKey: .utcOffset          )
    countryCallingCode = try values.decodeIfPresent(String.self , forKey: .countryCallingCode )
    currency           = try values.decodeIfPresent(String.self , forKey: .currency           )
    currencyName       = try values.decodeIfPresent(String.self , forKey: .currencyName       )
    languages          = try values.decodeIfPresent(String.self , forKey: .languages          )
    countryArea        = try values.decodeIfPresent(Int.self    , forKey: .countryArea        )
    countryPopulation  = try values.decodeIfPresent(Int.self    , forKey: .countryPopulation  )
    asn                = try values.decodeIfPresent(String.self , forKey: .asn                )
    org                = try values.decodeIfPresent(String.self , forKey: .org                )
 
  }

  init() {

  }
   
  */
}
