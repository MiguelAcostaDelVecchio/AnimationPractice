//
//  Contact Form.swift
//  AnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 11/5/23.
//

import SwiftUI
import ConfettiSwiftUI

struct ContactForm: View {
    enum ContactMethod {
        case email, phone
    }
    
    @State private var contactInfo = ""
    @State private var message = "Write your message here..."
    @State private var includeLogs = false
    @State private var typeError = "Help"
    @State private var methodOfContact = ContactMethod.email
    @State private var cnt = 0
    
    var body: some View {
        Form {
            Section(header: Text("How can we reach you?")) {
                Picker("Contact Method", selection: $methodOfContact) {
                    Text("Email").tag(ContactMethod.email)
                    Text("Phone").tag(ContactMethod.phone)
                }
                .pickerStyle(SegmentedPickerStyle())
                switch methodOfContact {
                case .email:
                    TextField("Email", text: $contactInfo)
                case .phone:
                    TextField("Phone", text: $contactInfo).keyboardType(.numberPad)
                }
            }
            
            Section(header: Text("What can we help you with?")) {
                Picker("Subject", selection: $typeError){
                    ForEach(["Help", "Suggestion", "Bug Report"], id: \.self){ subject in
                        Text(subject)
                    }
                }
            }
            
            Section(header: Text("Briefly explain what is going on.")) {
                TextEditor(text: $message)
            }
            
            Section(footer: Text("This information will be sent anonymously")) {
                Toggle(isOn: $includeLogs, label: {Text("Include Logs")})
            }
            
            Section{
                Button(action: {cnt += 1}) {Text("Submit")}
            }
        }
        .navigationTitle("Contact Us")
        .confettiCannon(counter: $cnt, num: 100, radius: 400.0)
    }
}

#Preview {
    ContactForm()
}
