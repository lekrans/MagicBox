//
//  PracticeView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-20.
//

import SwiftUI

struct PracticeView: View {
    
    @State var isProfileExpanded = true
    var body: some View {
        Form {
            Section {
                DisclosureGroup(isExpanded: $isProfileExpanded) {
                    TextField("First Name", text: .constant(""))
                    TextField("Last Name", text: .constant(""))
                    TextField("Email", text: .constant(""))
                    DatePicker("Birthday", selection: .constant(Date()))
                } label: {
                    Text("Profile")
                        .font(.headline)
                }
            }
            
   
            Section {
                DisclosureGroup {
                    Toggle("Push", isOn: .constant(true))
                    Toggle("Email", isOn: .constant(true))
                    Toggle("SMS", isOn: .constant(false))
                } label: {
                    Text("Preferences")
                        .font(.headline)
                }
            }
        }
    }
}

struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
    }
}
