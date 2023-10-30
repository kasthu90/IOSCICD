//
//  ContentView.swift
//  Retirment
//
//  Created by Kasthuri Tandavarayane on 27/10/2023.
//

import SwiftUI
import AppCenterCrashes
import AppCenterAnalytics

struct ContentView: View {
    @State private var email: String = ""
    @State private var age: String = ""
    @State private var name: String = ""
    @State private var retireage: String = ""
    @State private var isButtonClicked = false
    var body: some View {
        ZStack{
            VStack {
                TextField("Email", text: $email)
                    .textInputAutocapitalization(.never)
                TextField("Age", text: $age)
                TextField("Name", text: $name)
                TextField("Retirement age",text: $retireage)
                Spacer()
                Button(action:{
                    //Crashes.generateTestCrash()
                    Analytics.trackEvent("calculate_retirement_amount")
                    isButtonClicked.toggle()
                }) {
                    Text("Calculate ")
                    
                }
                
                
            }
        }
        
        
        
        if isButtonClicked {
            // Show text when the button is clicked.
            Text("calculated sucessfully!")
                .foregroundColor(.blue)
                .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
