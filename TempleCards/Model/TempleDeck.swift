//
//  TempleDeck.swift
//  TempleCards
//
//  Created by Yshanshen on 10/22/18.
//  Copyright © 2018 UE Shen. All rights reserved.
//

import Foundation

struct TempleDeck {
//    private var cards: [MemoryCard] = []
    
    var temples = [
        Temple(filename: "aba-nigeria-temple-lds-273999-mobile.jpg", name: "Aba Nigeria"),
        Temple(filename: "accra-ghana-temple-lds-249027-mobile.jpg", name: "Accra Ghana"),
        Temple(filename: "albuquerque-temple-lds-137885-mobile.jpg", name: "Albuquerque New Mexico"),
        Temple(filename: "anchorage-temple-lds-253274-mobile.jpg", name: "Anchorage Alaska"),
        Temple(filename: "apia-samoa-temple-lds-460475-mobile.jpg", name: "Apia Samoa"),
        Temple(filename: "asuncion-paraguay-temple-lds-298372-mobile.jpg", name: "Asunción Paraguay"),
        Temple(filename: "atlanta-georgia-temple-sunset-1218213-mobile.jpg", name: "Atlanta Georgia"),
        Temple(filename: "baton-rouge-temple-lds-1078084-mobile.jpg", name: "Baton Rouge Louisiana"),
        Temple(filename: "bern-switzerland-temple-lds-653038-mobile.jpg", name: "Bern Switzerland"),
        Temple(filename: "billings-temple-lds-946466-mobile.jpg", name: "Billings Montana"),
        Temple(filename: "birmingham-temple-lds-130170-mobile.jpg", name: "Birmingham Alabama"),
        Temple(filename: "bismarck-temple-lds-408056-mobile.jpg", name: "Bismarck North Dakota"),
        Temple(filename: "bogota-colombia-mormon-temple-856490-mobile.jpg", name: "Bogotá Colombia"),
        Temple(filename: "boise-temple-lds-39439-mobile.jpg", name: "Boise Idaho"),
        Temple(filename: "boston-temple-lds-945541-mobile.jpg", name: "Boston Massachusetts"),
        Temple(filename: "bountiful-temple-766491-mobile.jpg", name: "Bountiful Utah"),
        Temple(filename: "brigham-city-utah-temple-dedication-day-1027033-mobile.jpg", name: "Brigham City Utah"),
        Temple(filename: "brisbane-australia-temple-lds-745088-mobile.jpg", name: "Brisbane Australia"),
        Temple(filename: "buenos-aires-argentina-temple-lds-82744-mobile.jpg", name: "Buenos Aires Argentina"),
        Temple(filename: "calgary-alberta-temple-before-open-house-1033408-mobile.jpg", name: "Calgary Alberta"),
        Temple(filename: "campinas-brazil-temple-lighted-1029894-mobile.jpg", name: "Campinas Brazil"),
        Temple(filename: "cardston-alberta-temple-lds-782043-mobile.jpg", name: "Cardston Alberta"),
        Temple(filename: "cebu-philippines-temple-lds-852837-mobile.jpg", name: "Cebu City Philippines"),
        Temple(filename: "chicago-temple-lds-885844-mobile.jpg", name: "Chicago Illinois"),
        Temple(filename: "ciudad-juarez-mexico-temple-lds-126122-mobile.jpg", name: "Ciudad Juárez Mexico"),
        Temple(filename: "colonia-juarez-mexico-temple-lds-1039762-mobile.jpg", name: "Colonia Juárez Chihuahua Mexico"),
        Temple(filename: "columbia-river-temple-lds-761262-mobile.jpg", name: "Columbia River Washington"),
        Temple(filename: "columbia-temple-lds-83400-mobile.jpg", name: "Columbia South Carolina"),
        Temple(filename: "columbus-temple-lds-406110-mobile.jpg", name: "Columbus Ohio"),
        Temple(filename: "copenhagen-denmark-temple-895949-mobile.jpg", name: "Copenhagen Denmark"),
        Temple(filename: "cordoba-argentina-temple-rendering-780527-mobile.jpg", name: "Córdoba Argentina"),
        Temple(filename: "curitiba-brazil-temple-lds-851199-mobile.jpg", name: "Curitiba Brazil"),
        Temple(filename: "dallas-temple-lds-850748-mobile.jpg", name: "Dallas Texas"),
        Temple(filename: "denver-temple-lds-999518-mobile.jpg", name: "Denver Colorado"),
        Temple(filename: "detroit-temple-lds-837623-mobile.jpg", name: "Detroit Michigan"),
        Temple(filename: "draper-utah-lds-temple-1079449-mobile.jpg", name: "Draper Utah"),
        Temple(filename: "guatemala-lds-temple-82739-mobile.jpg", name: "Edmonton Alberta"),
        Temple(filename: "helsinki-finland-temple-lds-354503-mobile.jpg", name: "Helsinki Finland"),
        Temple(filename: "kyiv-ukraine-temple-lds-774302-mobile.jpg", name: "Kyiv Ukraine"),
        Temple(filename: "hawaii-temple-761091-mobile.jpg", name: "Laie Hawaii"),
        Temple(filename: "madrid-spain-temple-954939-mobile.jpg", name: "Madrid Spain"),
        Temple(filename: "mexico-city-temple-lds-591669-mobile.jpg", name: "Mexico City Mexico"),
        ]
    
    
//    subscript(index: Int) -> Temple {
//        get {
//            return temples[index]
//        }
//        set {
//            temples[index] = newValue
//        }
//    }
    
    static var sharedInstance = TempleDeck()
    
    var count: Int {
        return temples.count
    }
    //
    //    mutating func remove(at index: Int) {
    //        cards.remove(at: index)
    //    }
    
        mutating func shuffle() {
            temples.shuffle()
        }
}

