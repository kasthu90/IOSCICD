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
    var body: some View {
        ZStack{
            VStack {
                TextField("Email", text: $email)
                    .textInputAutocapitalization(.never)
                TextField("Age", text: $age)
                TextField("Name", text: $name)
                Spacer()
                Button("calculate"){
                    //Crashes.generateTestCrash()
                    Analytics.trackEvent("calculate_retirement_amount")
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
