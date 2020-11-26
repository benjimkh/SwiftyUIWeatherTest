//
//  SettingsView.swift
//  SwiftyUITest
//
//  Created by Benyamin Mokhtarpour on 23/01/20.
//  Copyright © 2020 BenyaminMokhtarpour. All rights reserved.
//

import SwiftUI
import Combine

struct SettingsView: View {
    let cities = ["Tehran", "Shjiraz", "Mashhad"]
    @ObservedObject var settingsStore: SettingsStore
    
    var body: some View {
        Form {
            Section(header: Text("Location")) {
                Picker(selection: $settingsStore.city, label: Text("City")) {
                    ForEach(0..<cities.count) {
                        Text(self.cities[$0]).tag(self.cities[$0])
                    }
                }
            }
        }.navigationBarTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(settingsStore: SettingsStore())
    }
}
