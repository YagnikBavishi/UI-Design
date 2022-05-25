//
//  URLSessionRequest.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 25/05/22.
//

import Foundation

class URLSessionRequest {
    
    //MARK : - Static Functions
    static func urlSessionRequest<T:Decodable>(url: String, method: String, body: Data, decodingType: T.Type, completion handler: @escaping (Swift.Result<Data?, Error>) -> Void) {
        if let url = URL(string: url) {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = method
            urlRequest.httpBody = body
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
            
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
                guard let responseData = data else {
                    return
                }
                
                //, completion handler: @escaping (Swift.Result<(), Error>) -> Void
                
                if let response = urlResponse as? HTTPURLResponse {
                    if((200 ..< 299) ~= response.statusCode) {
                        do {
                            let decoder = JSONDecoder()
                            let userResponse = try decoder.decode(T.self, from: responseData)
                            if urlResponse != nil {
                                handler(.success(userResponse))
                            }
                            
                            //handler(userResponse)
                        } catch let error {
                            print("Error...\(error.localizedDescription)")
                        }
                        
                    } else {
                        if let error = error {
                            handler(.failure(error.localizedDescription as! Error ))
                        }
                       
                        //handler(nil, "Error" as? T)
                    }
                }
            }
            dataTask.resume()
        }
    }
    
}// End of class

