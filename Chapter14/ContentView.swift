//
//  ContentView.swift
//  Chapter14
//
//  Created by Mike Panitz on 4/18/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            SimpleFormView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Form")
                }
            FormWithSectionsView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Sections")
                }
            DisabledFormElementsView()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Disabled elements")
                }
            StyledGroupBoxesView()
                .tabItem {
                    Image(systemName: "4.circle")
                    Text("Styled")
                }
            ExercisesView()
                .tabItem {
                    Image(systemName: "4.square")
                    Text("Exercises")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
