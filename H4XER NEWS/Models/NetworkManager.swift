//
//  NetworkManager.swift
//  H4XER NEWS
//
//  Created by Ahmd Amr on 4/11/20.
//  Copyright © 2020 Ahmd Amr. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let res = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = res.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
