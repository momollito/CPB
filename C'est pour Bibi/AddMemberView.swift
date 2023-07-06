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
                
                VStack {
                    TextField("Nom des alcooliques ", text: $field)
                    Button("Ajoute le") {
                        data.member.append(Member(name: field))
                        field = ""
                    }
                    
                    // Correct usage of ForEach to iterate over data.member
                    ForEach(data.member) { member in
                        Text(member.name)
                    }
                    NavigationLink("L'ets play !"){
                        
                    }
                }
            }
        }
    }

struct AddMemberView_Previews: PreviewProvider {
    static var previews: some View {
        AddMemberView().environmentObject(Members())
    }
}
