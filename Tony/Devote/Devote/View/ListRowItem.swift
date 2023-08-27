//
//  ListRowItem.swift
//  Devote
//
//  Created by Tony Lim on 2023/08/27.
//

import SwiftUI

struct ListRowItem: View {
    // MARK: - PROPERTIES
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : Color.primary)
                .padding(.vertical, 12)
                .animation(.default)
        }//: TOGGLE
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange) { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        }
    }
}

//struct ListRowItem_Previews: PreviewProvider {
//    static var previews: some View {
//        ListRowItem()
//    }
//}
