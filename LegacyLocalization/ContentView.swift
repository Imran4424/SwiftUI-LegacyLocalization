//
//  ContentView.swift
//  LegacyLocalization
//
//  Created by Shah Md Imran Hossain on 9/6/24.
//

import SwiftUI
import UIKit

extension String {
    var localizedString: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localizedString(argument: String) -> String {
        let localizedString = NSLocalizedString(self, comment: "")
        return String(format: localizedString, argument)
    }
}

struct ContentView: View {
    @State private var name: String = "Dear"
    @State private var loveCounter = 3000
    
    let localizedString = NSLocalizedString("Do you know %@?", comment: "A general question")
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Do you know %@?".localizedString(argument: name.localizedString))
                    .font(.title)
                
                Spacer()
                Spacer()
                Spacer()
                
                HStack {
                    Text("I love you")
                    Text("\(loveCounter)")
                        .bold()
                        .foregroundColor(Color.red)
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
