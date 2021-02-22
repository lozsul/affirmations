//
//  ContentView.swift
//  Affirmations
//
//  Created by Lauren Sullivan on 2/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var affirmations = [
        "A break is coming.",
        "Actually, I can.",
        "Billions of women have done this before me.",
        "Birth is miraculous however it happens.",
        "Birth is normal and natural.",
        "Birth is powerful. I will let it empower me.",
        "Breathe in, breathe out. One wave at a time.",
        "Breathe.",
        "Bring it on.",
        "Don't forget to have a good time.",
        "Each surge brings my baby closer.",
        "Each wave has a purpose.",
        "Even though I may feel overwhelmed, I can still do this.",
        "Focus. Take each one at a time.",
        "Good things are going to happen.",
        "Good, strong contractions will help me meet my baby.",
        "I am a force to be reckoned with.",
        "I am about to meet my baby.",
        "I am built for birth.",
        "I am fearless and brave.",
        "I am fierce but flexible.",
        "I am going to rock this birth thing.",
        "I am present. I am doing this. We are doing this.",
        "I am stronger than this contraction.",
        "I am the boss.",
        "I am the epicenter. It is my birth, my baby, my strength and power that will bring baby into the world.",
        "I believe in me.",
        "I can do anything for 1 minute.",
        "I choose love, not fear.",
        "I give this birth everything I have, I hold nothing back.",
        "I got this.",
        "I have strength I didn’t know existed.",
        "I have treated my body well, naturally and indulgently. My body knows what to do for birth and will treat me well.",
        "I let my body and our baby set the pace.",
        "I relax and my baby relaxes with me.",
        "I relax my jaw. I quiet my mind. My body will open. My baby will come.",
        "I'm doing better than I think.",
        "I'm not a worrier, I'm a warrior.",
        "I've got my positive pants on.",
        "It will happen as soon as it is time.",
        "It's not pain, it's power.",
        "Many women have birthed before me, and many will birth after.",
        "My baby and I are working together.",
        "My baby trusts me and I trust this process.",
        "My baby will be strong, happy, and healthy.",
        "My birth is full of possibilities.",
        "My body and baby are healthy and strong.",
        "My body is capable and strong.",
        "My body was made to do this.",
        "Ride the wave.",
        "She believed she could and so she did.",
        "Slow down. Calm down. Don't worry. Don't hurry.",
        "Storms don't last forever.",
        "The ability to give birth is a gift.",
        "The body achieves what the mind believes.",
        "The trick is to keep breathing.",
        "There is a calm after every storm.",
        "This feeling is temporary. It's not forever.",
        "This is the day we've been waiting for. I am ready.",
        "Today I will make magic happen."
    ]
    
    @State private var index: Int = 0
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                Text("\(affirmations[index])")
                    .font(.custom("EuphoriaScript-Regular", size: 60))
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(.gray)
                    .lineSpacing(10)
                
                Spacer()
                
                Button("Next >") {
                    if index == affirmations.count-1 {
                        newLoad()
                        index = 0
                    } else {
                        index += 1
                    }
                }
                .font(.custom("EuphoriaScript-Regular", size: 25))
                .frame(width: 70, height: 20)
                .padding()
                .background(Color.gray)
                .opacity(0.3)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            .onAppear(perform: newLoad)
        }
    }
    
    func newLoad() {
        affirmations.shuffle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
