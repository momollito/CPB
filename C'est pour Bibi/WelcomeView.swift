//
//  ContentView.swift
//  C'est pour Bibi
//
//  Created by Mathis Rosset on 05/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text ("À qui le tour ?" )
                    .font(.largeTitle)
                Spacer()
                Text ("Tu rentres les noms de tes collègues, tu lances la roue, et le chanceux paie la tournée!")
                Spacer()
                NavigationLink("Add Member"){
                        AddMemberView()
                        .navigationTitle("Ajoute tes potes")
                        
                    }
                
                    
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
