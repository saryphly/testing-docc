//
//  Environments.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 24/12/24.
//

import Foundation

struct Env {
    
    static var Base_URL: String {
        #if SIT
            return "https://sit.example.com"
        #elseif UAT
            return "https://uat.example.com"
        #elseif STG
            return "https://stg.example.com"
        #elseif PROD
            return ""
        #else
            return "https://sit.example.com"
        #endif
    }
}
