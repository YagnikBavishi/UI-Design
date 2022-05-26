//
//  URLSessionRequest.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 25/05/22.
//

import Foundation

class URLSessionRequest {
    
    //MARK : - Static Functions
    static func urlSessionRequest<T:Decodable>(url: String, method: String, body: Data, decodingType: T.Type, completion handler: @escaping (Result<T, ErrorDataClass>) -> Void) {
        if let url = URL(string: url) {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = method
            urlRequest.httpBody = body
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
                guard let responseData = data else {
                    return
                }
         
                if let response = urlResponse as? HTTPURLResponse {
                    if((200 ..< 299) ~= response.statusCode) {
                        do {
                            let userResponse = try JSONDecoder().decode(T.self, from: responseData)
                            handler(.success(userResponse))
                        } catch let error {
                            handler(.failure(ErrorDataClass(error: error.localizedDescription)))
                        }
                    } else {
                        do{
                            let errorResponse =  try JSONDecoder().decode(ErrorDataClass.self, from: responseData)
                            handler(.failure(ErrorDataClass(error: errorResponse.error)))
                        }
                        catch let error {
                            handler(.failure(ErrorDataClass(error: error.localizedDescription)))
                        }
                    }
                }
            }
            dataTask.resume()
        }
    }
    
}// End of class

