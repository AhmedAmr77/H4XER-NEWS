//
//  ContentView.swift
//  H4XER NEWS
//
//  Created by Ahmd Amr on 4/11/20.
//  Copyright © 2020 Ahmd Amr. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var netManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(netManager.posts){ po in
                NavigationLink(destination: DetailView(url: po.url)) {
                    HStack {
                        Text(String(po.points))
                        Text(po.title)
                    }
                }
                
            }
            .navigationBarTitle("H4XER NEWS")
        }
        .onAppear(perform: {
            self.netManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
