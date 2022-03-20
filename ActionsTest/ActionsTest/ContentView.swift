//
//  ContentView.swift
//  ActionsTest
//
//  Created by Anoop M on 2022-03-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                NavigationLink("Item1") {
                    DetailView(actionPerfomed: actionPerformed)
                }
                Text("Item1")
                Text("Item1")
            }
        }
    }
    
    private func actionPerformed( action: ProjectAction) {
        switch action {
        case .delete:
            print("Delete pressed")
        case .duplicate:
            print("duplicate pressed")
        case .create:
            print("create pressed")
        case .share:
            print("share pressed")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
