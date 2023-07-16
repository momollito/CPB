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
        
        VStack {
            TextField("Son petit nom...", text: $field)
                .multilineTextAlignment(.center)
                .font(.title2)
                .padding(.bottom)
            
            Button("Ajoute le") {
                if field.count>0{
                    data.member.append(Member(name: field))
                    field = ""}
            }.font(.title3)
            
            ForEach(data.member) { member in
                HStack{
                    Text(member.name)
                        .font(.title3)
                        .onAppear {
                            print("member", member.id)
                        }
                    Spacer()
                    Image(systemName: "xmark")
                        .onTapGesture {
                            //Why cannot we used the UUID() ?
                            if let index = data.member.firstIndex(where: { $0.id == member.id }) {data.member.remove(at: index)
                            }
                        }
                    
                }.padding(.horizontal,100)
                    .padding(.vertical, 10)
            }
            if data.member.count > 1  {
                NavigationLink("L'ets play !"){
                    FortuneWheelView().implementPopupView()
                }.font(.title3)
            }
            
        }
        
    }
}

struct AddMemberView_Previews: PreviewProvider {
    static var previews: some View {
        AddMemberView().environmentObject(Members())
    }
}
