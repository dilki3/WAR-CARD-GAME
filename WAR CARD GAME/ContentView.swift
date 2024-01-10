//
//  ContentView.swift
//  WAR CARD GAME
//
//  Created by Dila Dinesha on 2024-01-05.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                
                Button(action: {
                    deal()
                }, label: {
                     Image("button")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                           
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.black)
                Spacer()
    
            }
        }
    }
    
    func deal() {
        //randomize the player card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String (playerCardValue)
        
        //randomize the cpu cards
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String (cpuCardValue)
        
        //update the score
        if playerCardValue > cpuCardValue{
            //add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            //add 1 to cpu score
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
