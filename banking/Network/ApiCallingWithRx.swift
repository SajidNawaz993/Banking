//
//  ApiCallingWithRx.swift
//  banking
//
//  Created by Sajid Nawaz on 27/08/2022.
//

import Foundation
import RxSwift

class ApiCallingWithRx {
    // create a method for calling api which is return a Observable

class func sendRequest(_ url:String) -> Observable<[String:Any]> {
        return Observable<[String:Any]>.create { observer in
            var request = URLRequest(url: URL(string:url)!)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField:"Content-Type")
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                if(error == nil){
                    do {
                        let results = try JSONSerialization.jsonObject(with: data ?? Data()) as? [String:Any]
                        observer.onNext(results!)
                    } catch let error {
                        observer.onError(error)
                    }
                }else{
                    observer.onError(error!)
                }
                observer.onCompleted()
            }
            task.resume()
            
            return Disposables.create {
                task.cancel()
            }
        }
    }
}
