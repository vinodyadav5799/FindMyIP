//
//  ContentView.swift
//  FindMyIP
//
//  Created by htcuser on 08/02/24.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewModel = DataViewModel()
    @State private var isAnimating: Bool = true
    
    var body: some View {
        NavigationStack{
       
            ScrollView {
                
                VStack {
                    VStack {
                        HStack(alignment: .top, spacing: 0) {
                            Text("ip")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(Font.headline.weight(.light))
                            
                            Text(viewModel.ip)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("network")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.network)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("version")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.version)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("city")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.city)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("region")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.region)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("region_code")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.regionCode)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("country")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.country)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("country_name")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.countryName)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("country_code")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.countryCode)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("country_code_iso3")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.countryCodeIso3)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("country_capital")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.countryCapital)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("country_tld")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.countryTld)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("continent_code")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.continentCode)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("in_eu")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
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
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.postal)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("latitude")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(String(format: "%.1f", viewModel.latitude))
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("longitude")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(String(format: "%.1f", viewModel.longitude))
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("postal")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.postal)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("timezone")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.timezone)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("utc_offset")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.utcOffset)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("country_calling_code")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.countryCallingCode)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("currency")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.currency)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("currency_name")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.currencyName)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("languages")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.languages)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("country_area")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(String(viewModel.countryArea))
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("country_population")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(String(viewModel.countryPopulation))
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("asn")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.asn)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("org")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(Font.headline.weight(.light))
                            
                            Text(viewModel.org)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }.padding().background(Color.white)
                        
                    }.background(Color.gray.opacity(0.1))
                                
                    Spacer()

                }
                
            }.alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text (viewModel.chatListLoadingError ), dismissButton: .default(Text("OK")))
            }.overlay(
                ZStack(alignment: .center) {
                    if(self.viewModel.loading){
                        ProgressView()
                            .scaleEffect(4)
                            .font(.system(size:4))
                    }
                }
            )
            
            // ToolBar
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Location Tracker Details")
                        .foregroundColor(.white)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbarBackground(.red, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct ActivityIndicatorView: UIViewRepresentable {
    
    @Binding var isAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        //uiView.center =   //CGPointMake(body.frame.size.width / 2.0, self.body.frame.size.height / 2.0)
        isAnimating == true ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

