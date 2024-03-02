//
//  SwiftUIView.swift
//  WicHacks
//
//  Created by Alia Ulanbek Kyzy on 3/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("CustomColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("Helllo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
