//
//  ContentView.swift
//  LegacyLocalization
//
//  Created by Shah Md Imran Hossain on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: LocalizedStringResource = "Dear"
    @State private var loveCounter = 3000
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("Do you know \(name)?")
                    .font(.title)
                
                Spacer()
                Spacer()
                Spacer()
                
                HStack {
                    Text("I love you")
                    Text("\(loveCounter)")
                        .bold()
                        .foregroundStyle(Color.red)
                }
                
                Spacer()
                Spacer()
                Spacer()
                
                HStack {
                    Button("Reset") {
                        loveCounter = 3000
                    }
                    
                    Spacer()
                    
                    Button("Random") {
                        loveCounter = Int.random(in: 1...999999999)
                    }
                }
                .padding()
            }
            .navigationTitle("Localization App")
        }
    }
}

#Preview {
    ContentView()
}
