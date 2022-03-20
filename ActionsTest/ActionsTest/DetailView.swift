//
//  DetailView.swift
//  ActionsTest
//
//  Created by Anoop M on 2022-03-05.
//

import SwiftUI

enum ProjectAction {
    case delete
    case duplicate
    case create
    case share
}
struct DetailView: View {
    var actionPerfomed: ((ProjectAction) -> Void)?
    var body: some View {
        VStack {
            Button(action: {actionPerfomed?( .duplicate)}) {
                Label("Duplicate", systemImage: "doc.on.doc")
            }
            Button(action: {actionPerfomed?( .create)}) {
                Label("Create", systemImage: "person.badge.plus")
            }
            Button(action: {actionPerfomed?( .share)}) {
                Label("Share", systemImage: "square.and.arrow.up")
            }
            Button(action: { actionPerfomed?( .delete)}) {
                Label("Delete", systemImage: "trash")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
