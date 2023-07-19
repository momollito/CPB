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
        
        
        let backColor = Color(red: 240/250, green: 238/250, blue: 217/250)
        
        
        ZStack{Color(red: 240/250, green: 238/250, blue: 217/250).ignoresSafeArea()
            VStack {
                Image("title")
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing,70)
                    .padding([.vertical,.leading], 20)
                
                Spacer()
                
                HStack{
                    TextField("Ajouter un buveur...", text: $field)
                    //                    .multilineTextAlignment(.center)
                        .font(.title2)
                    
                    Image(systemName: "plus.app")
                        .onTapGesture {
                            if field.count>0{
                                data.member.append(Member(name: field))
                                field = ""}
                        }.font(.title)
                }.frame(width: 300,height: 80)
                
                ScrollView {
                    ForEach(data.member) { member in
                        HStack{
                            Text(member.name)
                                .font(.title3)
                                .onAppear {
                                    print("member", member.id)
                                }
                            Spacer()
                            Image(systemName: "xmark.circle")
                                .font(.title2)
                                .onTapGesture {
                                    //Why cannot we used the UUID() ?
                                    if let index = data.member.firstIndex(where: { $0.id == member.id }) {data.member.remove(at: index)
                                    }
                                }
                            
                        }.frame(width: 300,height: 40)
                    }}
                if data.member.count > 1  {
                    NavigationLink{
                        FortuneWheelView().implementPopupView()}label: {
                            HStack{Text("À qui le tour ?")
                                Image(systemName: "arrow.forward.circle.fill")
                            }.font(.title2)
                        }
                }
                Spacer()
            }
        }
            
            
            
        }
        
    }
    
    
    struct AddMemberView_Previews: PreviewProvider {
        static var previews: some View {
            AddMemberView().environmentObject(Members())
        }
    }
