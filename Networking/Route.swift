//
//  Route.swift
//  NetflixClone
//
//  Created by Mehmet Bilir on 20.07.2022.
//

import Foundation


enum Route {
    
    static let baseUrl = "https://api.themoviedb.org/3"
    static let apiKey = "4377ea3a3ac936fc129eedc132d674df"
    
    case fetchTrendingMovies
    case fetchTrendingTvSeries
    case fetchUpComingMovies
    case fetchOrders
    
    
    var description : String {
        
        switch self {
        case.fetchTrendingMovies:
            return "/trending/movie/day?api_key=\(Route.apiKey)"
        case .fetchTrendingTvSeries:
            return "/trending/tv/day?api_key=\(Route.apiKey)"
        case.fetchUpComingMovies:
            return "/trending/movie/upcoming?api_key=\(Route.apiKey)"
        case.fetchOrders:
            return "/orders"
        }
    }
}
