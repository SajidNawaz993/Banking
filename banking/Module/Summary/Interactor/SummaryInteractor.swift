//
//  SummaryInteractor.swift
//  banking
//
//  Created by Sajid Nawaz on 23/08/2022.
//

import Foundation
import Alamofire

@objc class SummaryInteractor:NSObject, PresenterToSummaryInteractorProtocol {
    
    func setPresent(_ setPresentProtocol: SummaryInteractorToPresenterProtocol!) {
        presenter = setPresentProtocol;
    }
    
    weak var presenter: SummaryInteractorToPresenterProtocol?

    func fetchSummaryWithSwiftRx() {
        
    ApiCallingWithRx.sendRequest("\(BASE_URL)5abb1042350000580073a7ea").subscribe(
            onNext: { json in
                var summaryArr:[SummaryEntity] = [SummaryEntity]()
                let arrayResponse = json["accounts"] as! NSArray
                for dict in arrayResponse{
                    let summaryEntity = SummaryEntity.init(dictionary: dict as? [AnyHashable : Any] ?? [AnyHashable : Any]())
                    if(summaryEntity != nil){
                      summaryArr.append(summaryEntity!)
                    }
                }
                self.presenter!.onSuccessResult(summaryArr)
            },
            onError: { error in
                self.presenter?.onErrorResult(error)
            },
            onCompleted: {
               print("Completed event.")
            })
    }
    
    func fetchSummaryWithAlamofire() {

        Alamofire.request("\(BASE_URL)5abb1042350000580073a7ea").responseJSON { response in

                    if(response.response?.statusCode == 200){
                        if let json = response.result.value as AnyObject? {
                            var summaryArr:[SummaryEntity] = [SummaryEntity]()
                            let arrayResponse = json["accounts"] as! NSArray
                            for dict in arrayResponse{
                                let summaryEntity = SummaryEntity.init(dictionary: dict as? [AnyHashable : Any] ?? [AnyHashable : Any]())
                                if(summaryEntity != nil){
                                  summaryArr.append(summaryEntity!)
                                }
                            }
                            self.presenter!.onSuccessResult(summaryArr)
                        }
                    }else {
                        self.presenter?.onErrorResult(response.error)
                    }
                }
    }
}
