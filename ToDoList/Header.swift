//
//  Header.swift
//  ToDoList
//
//  Created by Sara Beinish on 7/16/23.
//

import SwiftUI



    var MyHeader: some View {
        HStack(alignment: .top) {
            Image(systemName: "checklist")
                .resizable(resizingMode: .stretch)
                .padding(.leading, 15.0)
                .frame(width: 80.0, height: 50.0)
            Text("Sara's To Do")
                .font(.title)
                .padding([.top, .leading], 10.0)
            Spacer()
        }.frame(alignment: .top)
    
}
