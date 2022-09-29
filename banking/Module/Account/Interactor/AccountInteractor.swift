//
//  AccountInteractor.swift
//  banking
//
//  Created by Sajid Nawaz on 23/08/2022.
//

import Foundation
import Alamofire

@objc class AccountInteractor:NSObject, PresenterToAccountInteractorProtocol {
   
        
    
    func setPresent(_ setPresentProtocol: AccountInteractorToPresenterProtocol!) {
        presenter = setPresentProtocol;
    }
    
    weak var presenter: AccountInteractorToPresenterProtocol?
   
    func fetchAccount(withSwiftRx transactionsUrl: String!) {
        ApiCallingWithRx.sendRequest(transactionsUrl).subscribe(
                onNext: { json in
                    var accountArr:[AccountEntity] = [AccountEntity]()
                    let arrayResponse = json["transactions"] as! NSArray
                    for dict in arrayResponse{
                        let accountEntity = AccountEntity.init(dictionary: dict as? [AnyHashable : Any] ?? [AnyHashable : Any]())
                        if(accountEntity != nil){
                            accountArr.append(accountEntity!)
                        }
                    }
                    self.presenter!.onSuccessResult(accountArr)
                },
                onError: { error in
                    self.presenter?.onErrorResult(error)
                },
                onCompleted: {
                   print("Completed event.")
                })
    }
    
    func fetchAccount(withAlamofire transactionsUrl: String!) {
        Alamofire.request(transactionsUrl).responseJSON { response in

                if(response.response?.statusCode == 200){
                    if let json = response.result.value as AnyObject? {
                        var accountArr:[AccountEntity] = [AccountEntity]()
                        let arrayResponse = json["transactions"] as! NSArray
                        for dict in arrayResponse{
                            let accountEntity = AccountEntity.init(dictionary: dict as? [AnyHashable : Any] ?? [AnyHashable : Any]())
                            if(accountEntity != nil){
                                accountArr.append(accountEntity!)
                            }
                        }
                        self.presenter!.onSuccessResult(accountArr)
                    }
                }else {
                    self.presenter?.onErrorResult(response.error)
                }
        }
    }
    
}
