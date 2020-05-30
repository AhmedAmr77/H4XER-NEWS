//
//  DetailView.swift
//  H4XER NEWS
//
//  Created by Ahmd Amr on 4/11/20.
//  Copyright © 2020 Ahmd Amr. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
