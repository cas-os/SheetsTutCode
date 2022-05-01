//
//  ContentView.swift
//  SheetsTutCode
//
//  Created by HAL-9001 on 01/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isVisible = false
    var depthLevel = 0
    
    var body: some View {
        
        VStack {
            Button {
                self.isVisible.toggle()
            } label: {
                Text("1.Go to ContentView ! Depth level = \(depthLevel)")
            }
            .padding()
            .sheet(isPresented: $isVisible, content: {
            ContentView(depthLevel: self.depthLevel + 1)
                
        })

            Button {
                self.isVisible.toggle()
            } label: {
                Text("2.Go to SheetView ! Depth level = \(depthLevel)")
            }
            padding()
            .sheet(isPresented: $isVisible) {
                SheetView()
            }
            

        }
        
        



    
    }
}

struct SheetView: View {
    var body: some View {
        Text("sheetView #2")
            .font(.title)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
