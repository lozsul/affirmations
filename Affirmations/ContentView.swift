//
//  ContentView.swift
//  Affirmations
//
//  Created by Lauren Sullivan on 2/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var affirmations = [
        "I am fearless and brave.",
        "I am built for birth.",
        "Billions of women have done this before me.",
        "I am the boss.",
        "This feeling is temporary. It's not forever.",
        "I have treated my body well naturally and indulgently. My body knows what to do for birth and will treat me well.",
        "My birth is full of possibilities.",
        "I am the epicenter. It is my birth, my baby, my strength and power that will bring baby into the world.",
        "Focus. Take each one at a time.",
        "My body was made to do this.",
        "My baby and I are working together.",
        "A break is coming.",
        "This is the day we've been waiting for. I am ready.",
        "Each surge brings my baby closer.",
        "Bring it on.",
        "I am present. I am doing this. We are doing this.",
        "I let my body and our baby set the pace.",
        "I relax and my baby relaxes with me.",
        "I am fierce but flexible.",
        "My body is capable and strong.",
        "My baby trusts me and I trust this process.",
        "Birth is powerful. I will let it empower me.",
        "I am stronger than this contraction.",
        "Birth is normal and natural."
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
                    //.font(.largeTitle)
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
                    print(index)
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
            .onAppear(perform: viewDidLoad)
        }
    }
    
    func newLoad() {
        affirmations.shuffle()
    }
    
    func viewDidLoad() {
            
            for family: String in UIFont.familyNames
            {
                print(family)
                for names: String in UIFont.fontNames(forFamilyName: family)
                {
                    print("== \(names)")
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
