//
//  ContentView.swift
//  ToDoList
//
//  Created by Sara Beinish on 7/9/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
            
        
        VStack {
            //header
            MyHeader
                
            //items
            VStack {
                
                //existing items
                ItemView(item: Item(newitem: "Call doctor"))
                
                //new item adder
                ItemView(item: Item(newitem: "Add Item Here"))
            }
            Spacer()
            
            
        }.frame(
            width: .infinity,
            height: .infinity)
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





struct ItemView: View {
    @ObservedObject var item: Item
    @State private var enteredText: String = "Enter text here"
    
    //style/display of item:
    var body: some View {
        HStack {
            HStack {
                Button {
                    item.press()
                } label: {
                    Image(systemName: item.image)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .symbolRenderingMode(.palette)
                        .foregroundColor(item.color)
                }
                
                TextField("Enter text here", text: $enteredText)
                    .font(.system(size: 20))
                    .foregroundColor(item.color)
                
            }
            .padding(.leading, 20)
            
            Spacer()
            Text(item.date, format: .dateTime.day().month().year())
                .padding(.trailing, 20)
        }
    }
}
