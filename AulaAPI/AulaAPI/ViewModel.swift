//
//  ViewModel.swift
//  AulaAPI
//
//  Created by Student02 on 29/06/23.
//
class HomeViewModel: ObservableObject{
    
    import SwiftUI
    
    enum ViewState {
        case START
        case LOADING
        case SUCCESS(users: [User])
        case FAILURE(error: String)
    }
    
    @Published var currentState: ViewState = .START
}
