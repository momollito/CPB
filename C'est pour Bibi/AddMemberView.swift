//
//  AddMemberView.swift
//  C'est pour Bibi
//
//  Created by Mathis Rosset on 05/07/2023.
//

import SwiftUI

struct AddMemberView: View {
    @EnvironmentObject var data : Members
    @State var field : String = ""
    
    var body: some View {
        
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                TextField("Nom de l'alcoolique 1", text: $field)
                Button("Ajoute le"){
                    data.member.append(Member(name: field))
                    
                    print("clo", data.member, "c'esg")
                }
                    ForEach(data.member){
                        member in
                        Text(member.name)
                    
                }
            }
        }
    }
    
}

struct AddMemberView_Previews: PreviewProvider {
    static var previews: some View {
        AddMemberView()
    }
}
