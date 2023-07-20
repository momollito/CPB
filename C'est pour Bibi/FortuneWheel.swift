//
//  FortuneWheel.swift
//  C'est pour Bibi
//
//  Created by Mathis Rosset on 07/07/2023.
//

import SwiftUI
import FortuneWheel
import PopupView
import ConfettiSwiftUI

struct FortuneWheelView: View {
    @EnvironmentObject var data : Members
    
    @State var playerName = ""
    
    @State var counter: Int = 0
    
    var body: some View {
        
        
        //        let backColor = Color(red: 240/250, green: 238/250, blue: 217/250)
        
        
        
        ZStack{Color(red: 240/250, green: 238/250, blue: 217/250).ignoresSafeArea()
            VStack{
                
                Spacer()
                Text("Tourne la roue pour savoir qui va payer !")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .bold()
                    .padding(20)
                Spacer()
                ZStack {
                    if data.member.count > 1 {
                        FortuneWheel(titles: data.member.map { $0.name }, size: 320, onSpinEnd: { index in
                            playerName = data.member[index].name
                            CenterCustomPopup(player: playerName).showAndStack()
                            counter += 1
                        }).frame(maxWidth: .infinity)
                            .confettiCannon(counter: $counter, num: 70,confettis: [.text("💶"), .text("🍺"), .text("💸"), .text("🥂")],confettiSize: 20, repetitions: 2, repetitionInterval: 1.5)
                        
                        
                    }
                }
                Spacer()
            }}
        
        
    }
}



struct CenterCustomPopup: CentrePopup {
    var player : String
    
    func createContent() -> some View {
        
        
        return VStack(spacing: 30) {
            Text("🎉 \(player) 🎉")
                .bold()
                .font(.title)
            
            
            Text("C'est à \(player) de payer !")
                .bold()
                .font(.title3)
            
            Button(action: dismiss) { Text("Rejoue") }
        }
        .padding(.vertical, 20)
    }
}





struct FortuneWheelView_Previews: PreviewProvider {
    static var previews: some View {
        FortuneWheelView().environmentObject(Members())
    }
}
