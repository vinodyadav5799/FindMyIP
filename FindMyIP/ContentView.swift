//
//  ContentView.swift
//  FindMyIP
//
//  Created by htcuser on 08/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    HStack(alignment: .top, spacing: 0) {
                        Text("ip")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.ip)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("network")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.network)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("version")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.version)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("city")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.city)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("region")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.region)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("region_code")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.regionCode)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("country")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.country)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("country_name")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.countryName)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("country_code")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.countryCode)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("country_code_iso3")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.countryCodeIso3)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("country_capital")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.countryCapital)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("country_tld")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.countryTld)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("continent_code")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.continentCode)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("in_eu")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        if !viewModel.inEu{
                            Text("true")
                            .frame(minWidth: 0, maxWidth: .infinity)
                        } else {
                            Text("false")
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }
                        
                        
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("postal")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.postal)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("latitude")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(String(format: "%.1f", viewModel.latitude))
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("longitude")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(String(format: "%.1f", viewModel.longitude))
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("postal")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.postal)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("timezone")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.timezone)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("utc_offset")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.utcOffset)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("country_calling_code")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.countryCallingCode)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("currency")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.currency)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("currency_name")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.currencyName)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("languages")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.languages)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("country_area")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(String(viewModel.countryArea))
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("country_population")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(String(viewModel.countryPopulation))
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("asn")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.asn)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("org")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        
                        Text(viewModel.org)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.padding().background(Color.white)
                    
                }
                            
                Spacer()

            }
            
        }.alert(isPresented: $viewModel.showAlert) {
            Alert(title: Text("Error"), message: Text (viewModel.chatListLoadingError ), dismissButton: .default(Text("OK")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
