//
//  Members.swift
//  C'est pour Bibi
//
//  Created by Mathis Rosset on 05/07/2023.
//

import SwiftUI

class Members : ObservableObject{
    @Published var member : [Member] = []
}


struct Member : Identifiable {
    var name: String
    
    var id = UUID()
}
