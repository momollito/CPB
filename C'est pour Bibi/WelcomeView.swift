//
//  ContentView.swift
//  C'est pour Bibi
//
//  Created by Mathis Rosset on 05/07/2023.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        
       
            
            
        VStack{
                 Image("title")
                .resizable()
                .scaledToFit()
                .padding(.trailing,70)
                .padding([.vertical,.leading], 20)
                
                Text ("L'appli qui décide qui va payer la prochaine tournée !")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .padding(10)
            Spacer()
                Image("beer")
                    .resizable()
                    .scaledToFit()
            Spacer()
                Text ("Tu rentres les noms de tes collègues, tu lances la roue, et le chanceux paie la tournée!")
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .padding(30)
                
                NavigationLink{
                        AddMemberView()
                        
                } label: {
                    Text ("Ajoute tes potes")
                        .font(.title3)
                        .padding(15)
                        .background(.white)
                        .cornerRadius(100)
                        
                }
                
                    
                
            }
        
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
